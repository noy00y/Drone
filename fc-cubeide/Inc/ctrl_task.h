#include "cmsis_os2.h"
// #include "est_task.h"
#include <stdint.h>

#define CTRL_TASK_PERIOD_MS (2U) // 500 hz

// Debug:
typedef struct {
    float roll_sp;      // [rad]
    float pitch_sp;     // [rad]
    float yaw_sp;       // [rad]

    float roll_meas;    // [rad]
    float pitch_meas;   // [rad]
    float yaw_meas;     // [rad]

    float u_roll;       // normalized [-1, +1]
    float u_pitch;      // normalized [-1, +1]
    float u_yaw;        // normalized [-1, +1]

    float collective;   // normalized [0, 1]
    uint32_t timestamp_ms;
} ctrl_debug_t;

void CTRL_GetDebug(ctrl_debug_t *out);
void CTRL_Task_Init(void);

