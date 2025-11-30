#include "pwm_task.h"
#include "tim.h" // htim1 
#include <string.h>

// Config
#define PWM_TASK_PERIOD_MS      2U       // 500 Hz
#define PWM_MIN_US              1000U    // off
#define PWM_MAX_US              2000U    // on
#define CMD_STALE_TIMEOUT_MS    50U      // if no cntrl update within 50 ms --> turn off

// Internel State:
static volatile pwm_cmd_t   g_cmd;
static volatile uint32_t    g_cmd_seq = 0; // lock free double buffering
static volatile bool        g_armed = false;
volatile pwm_debug_t g_dbg;

// Helper Funcs:
static inline float clampf(float x, float low, float high)
{
    if (x < low) return low;
    if (x > high) return high;
    return x;
}

static inline uint16_t norm_to_us(float norm)
{
    // norm expected in [0, 1]
    norm = clampf(norm, 0.0f, 1.0f);
    float us = (float)PWM_MIN_US + norm * (float)(PWM_MAX_US - PWM_MIN_US);
    if (us < (float)PWM_MIN_US) us = (float)PWM_MIN_US;
    if (us > (float)PWM_MAX_US) us = (float)PWM_MAX_US;
    return (uint16_t)(us + 0.5f);
}

// lock free read of g_cmd with simple sequence counter
static void read_latest_cmd(pwm_cmd_t *out)
{
    if (!out) return;

    uint32_t primask = __get_PRIMASK();
    __disable_irq();
    *out = g_cmd;
    __set_PRIMASK(primask);
}

// public api:
void PWM_SetCommand(float collective, float u_roll, float u_pitch, float u_yaw, uint32_t timestamp_ms)
{
    pwm_cmd_t cmd;
    cmd.collective   = collective;
    cmd.u_roll       = u_roll;
    cmd.u_pitch      = u_pitch;
    cmd.u_yaw        = u_yaw;
    cmd.timestamp_ms = timestamp_ms;

    uint32_t primask = __get_PRIMASK();
    __disable_irq();
    g_cmd = cmd;
    __set_PRIMASK(primask);
}

void PWM_SetArmed(bool armed)
{
    g_armed = armed;
}

void PWM_GetDebug(pwm_debug_t *out)
{
    if (!out) return;
    pwm_debug_t tmp = g_dbg;
    *out = tmp;
}

static void pwm_task(void *arguement)
{
    (void)arguement;
    uint32_t next_wakeup = osKernelGetTickCount();

    while (1)
    {
        uint32_t now_ms = osKernelGetTickCount();

        // off
        uint16_t m1_us = PWM_MIN_US;
        uint16_t m2_us = PWM_MIN_US;
        uint16_t m3_us = PWM_MIN_US;
        uint16_t m4_us = PWM_MIN_US;
        uint32_t age_ms = 0;

        if (g_armed)
        {
            pwm_cmd_t cmd;
            read_latest_cmd(&cmd);

            if (cmd.timestamp_ms <= now_ms) {
                age_ms = now_ms - cmd.timestamp_ms;
            } else {
                age_ms = 0; // wraparound unlikely in your time scales
            }

            if (age_ms < CMD_STALE_TIMEOUT_MS)
            {
                //  Quad Orientation
                //  M1: Front Left
                //  M2: Front Right
                //  M3: Rear Left
                //  M4: Rear Right
                // Mix (normalized thrust in [0, 1] before mapping to µs):
                float collective = clampf(cmd.collective, 0.0f, 1.0f);

                float m1 = collective + cmd.u_pitch + cmd.u_roll - cmd.u_yaw;
                float m2 = collective + cmd.u_pitch - cmd.u_roll + cmd.u_yaw;
                float m3 = collective - cmd.u_pitch + cmd.u_roll + cmd.u_yaw;
                float m4 = collective - cmd.u_pitch - cmd.u_roll - cmd.u_yaw;

                // Normalize: ensure outputs stay within [0, 1]
                m1 = clampf(m1, 0.0f, 1.0f);
                m2 = clampf(m2, 0.0f, 1.0f);
                m3 = clampf(m3, 0.0f, 1.0f);
                m4 = clampf(m4, 0.0f, 1.0f);

                m1_us = norm_to_us(m1);
                m2_us = norm_to_us(m2);
                m3_us = norm_to_us(m3);
                m4_us = norm_to_us(m4);
            }
            // cut power since cmd stale
            else 
            {                    
                g_armed = false;
                m1_us = m2_us = m3_us = m4_us = PWM_MIN_US;
            }
        }
        // Write to capture compare regs (tim1 --> 1 tick = 1 us)
        TIM1->CCR1 = m1_us;
        TIM1->CCR2 = m2_us;
        TIM1->CCR3 = m3_us;
        TIM1->CCR4 = m4_us;

        // Debug 
        pwm_debug_t dbg;
        dbg.m1_us      = m1_us;
        dbg.m2_us      = m2_us;
        dbg.m3_us      = m3_us;
        dbg.m4_us      = m4_us;
        dbg.armed      = g_armed;
        dbg.cmd_age_ms = age_ms;
        g_dbg = dbg;
        
        // 2 ms scheduling
        next_wakeup += PWM_TASK_PERIOD_MS;
        uint32_t now = osKernelGetTickCount();
        if ((int32_t)(next_wakeup - now) > 0) {
            osDelay(next_wakeup - now);
        } else {
            next_wakeup = now;
        }
    }
}

void PWM_Task_Init(void)
{
    // Start PWM outputs via HAL ONCE here (init/config path)
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2);
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3);
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_4);

    // initial state --> clear cmd, dbg and turn motors off
    memset((void*)&g_cmd, 0, sizeof(g_cmd));
    g_cmd_seq = 0;
    g_armed   = false;
    memset((void*)&g_dbg, 0, sizeof(g_dbg));

    TIM1->CCR1 = PWM_MIN_US;
    TIM1->CCR2 = PWM_MIN_US;
    TIM1->CCR3 = PWM_MIN_US;
    TIM1->CCR4 = PWM_MIN_US;

    const osThreadAttr_t pwm_attr = {
        .name       = "pwm_task",
        .stack_size = 512,
        // .priority   = osPriorityHigh2,   // same tier as ctrl, or one notch below if needed
        .priority   = osPriorityHigh,
    };
    osThreadNew(pwm_task, NULL, &pwm_attr);
}
