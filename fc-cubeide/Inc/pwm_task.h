#include "cmsis_os2.h"
#include <stdint.h>
#include <stdbool.h>
#define MIXER_TASK_PERIOD_MS  (2U)   // 500 Hz

typedef struct {
    float collective;   // 0..1
    float u_roll;       // -1..1
    float u_pitch;      // -1..1
    float u_yaw;        // -1..1
    uint32_t timestamp_ms;
} pwm_cmd_t;

typedef struct {
    uint16_t m1_us;
    uint16_t m2_us;
    uint16_t m3_us;
    uint16_t m4_us;
    bool     armed;
    uint32_t cmd_age_ms;
} pwm_debug_t;

void PWM_Task_Init(void);
void PWM_SetCommand(float collective, float u_roll, float u_pitch, float u_yaw, uint32_t timestamp_ms);
void PWM_SetArmed(bool armed);
void PWM_GetDebug(pwm_debug_t *out);
extern volatile pwm_debug_t g_dbg;
