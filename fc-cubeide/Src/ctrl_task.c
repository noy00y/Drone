#include "ctrl_task.h"
#include "est_task.h"
#include "pwm_task.h"

// Simple gains
// KP - scaling factor for how strongly to react to being away from target setpoint (dist)
// KD - scaling factor for how strongly to react to speed of the error (velocity)
static const float KP_ROLL  = 4.0f;
static const float KD_ROLL  = 0.05f;
static const float KP_PITCH = 4.0f;
static const float KD_PITCH = 0.05f;

// Attitude setpoints (rad) --> replace with cli
static const float ROLL_SP  = 0.0f;
static const float PITCH_SP = 0.0f;
static const float YAW_SP   = 0.0f; 

static volatile ctrl_debug_t g_ctrl_dbg; // debug

void CTRL_GetDebug(ctrl_debug_t *out)
{
    if (!out) return;
    ctrl_debug_t tmp = g_ctrl_dbg;
    *out = tmp;
}

static void ctrl_task(void *arguement)
{
    (void)arguement;
    uint32_t next_wakeup = osKernelGetTickCount();

    // D Term state
    float last_roll_err = 0.0f;
    float last_pitch_err = 0.0f;

    while (1)
    {
        attitude_state_t att;
        get_attitude(&att);
        
        const float dt = CTRL_TASK_PERIOD_MS / 1000.0f; // dt based on period (in seconds)

        // Proportional terms:
        float roll_err = ROLL_SP - att.roll;
        float pitch_err = PITCH_SP - att.pitch;

        // Derivative terms:
        float d_roll = (roll_err - last_roll_err) / dt;
        float d_pitch = (pitch_err - last_pitch_err) / dt;

        last_roll_err = roll_err;
        last_pitch_err = pitch_err;
        float yaw_err = YAW_SP - att.yaw;

        // PD control outputs --> torque commands
        float u_roll = KP_ROLL * roll_err + KD_ROLL * d_roll;
        float u_pitch = KP_PITCH * pitch_err + KD_PITCH * d_pitch;
        float u_yaw   = 0.0f;  

        // Clip to [-1, +1]
        if (u_roll  >  1.0f) u_roll  =  1.0f;
        if (u_roll  < -1.0f) u_roll  = -1.0f;
        if (u_pitch >  1.0f) u_pitch =  1.0f;
        if (u_pitch < -1.0f) u_pitch = -1.0f;
        if (u_yaw   >  1.0f) u_yaw   =  1.0f;
        if (u_yaw   < -1.0f) u_yaw   = -1.0f;

        float collective = 0.2f; // 20% throttle;

        PWM_SetCommand(collective, u_roll, u_pitch, u_yaw, att.timestamp_ms); // feed into pwm mixer
        ctrl_debug_t dbg;
        dbg.roll_sp      = ROLL_SP;
        dbg.pitch_sp     = PITCH_SP;
        dbg.yaw_sp       = YAW_SP;
        dbg.roll_meas    = att.roll;
        dbg.pitch_meas   = att.pitch;
        dbg.yaw_meas     = att.yaw;
        dbg.u_roll       = u_roll;
        dbg.u_pitch      = u_pitch;
        dbg.u_yaw        = u_yaw;
        dbg.collective   = collective;
        dbg.timestamp_ms = att.timestamp_ms;
        g_ctrl_dbg = dbg;  // single struct write

        // Scheduling at 2 ms ticks
        next_wakeup += CTRL_TASK_PERIOD_MS;
        uint32_t now = osKernelGetTickCount();
        if ((int32_t)(next_wakeup - now) > 0) {osDelay(next_wakeup - now);}
        else {next_wakeup = now;}
    }
}

void CTRL_Task_Init(void)
{
    const osThreadAttr_t ctrl_task_attr = {
        .name       = "ctrl_task",
        .stack_size = 1024,
        .priority   = osPriorityAboveNormal,
    };
    osThreadNew(ctrl_task, NULL, &ctrl_task_attr);
}