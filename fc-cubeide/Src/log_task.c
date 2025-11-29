// log_task.c
#include "log_task.h"
#include "imu_task.h"
#include "est_task.h"
#include "ctrl_task.h"
#include "pwm_task.h"
#include "imu.h"
#include <stdio.h>
#include <stdint.h>
#define M_PI 3.14159265358979323846f

static void log_task(void *argument)
{
    (void)argument;

    const uint32_t period_ticks = 50;     // 50 ms, 20 Hz
    uint32_t last_wake = osKernelGetTickCount();

    imu_sample_t sample;
    PWM_SetArmed(true); // arm the pwm

    for (;;)
    {

        // ----- 1) Wait for next 10 ms boundary -----
        uint32_t now = osKernelGetTickCount();
        uint32_t next = last_wake + period_ticks;
        int32_t diff = (int32_t)(next - now);

        if (diff > 0)
        {
            osDelay((uint32_t)diff);
            last_wake = next;
        }
        else
        {
            last_wake = now;
        }

        // ----- 2) Drain all pending IMU samples (keep the newest) -----
        bool got = false;
        while (IMU_GetNextSample(&sample, 0))     // 0 ms → non-blocking
        {
            got = true;
        }

        if (!got)
            continue; // No fresh IMU sample this cycle

        // ----- 3) Get latest attitude & controller + PWM debug -----
        attitude_state_t att;
        get_attitude(&att);

        ctrl_debug_t ctrl_dbg;
        CTRL_GetDebug(&ctrl_dbg);

        pwm_debug_t pwm_dbg;
        PWM_GetDebug(&pwm_dbg);

        const float rad2deg = 180.0f / (float)M_PI;

        float roll_deg_meas  = ctrl_dbg.roll_meas  * rad2deg;
        float pitch_deg_meas = ctrl_dbg.pitch_meas * rad2deg;
        float yaw_deg_meas   = ctrl_dbg.yaw_meas   * rad2deg;

        float roll_deg_sp  = ctrl_dbg.roll_sp  * rad2deg;
        float pitch_deg_sp = ctrl_dbg.pitch_sp * rad2deg;
        float yaw_deg_sp   = ctrl_dbg.yaw_sp   * rad2deg;

        printf(
            "CTRL,%lu,"
            "MEAS,%.2f,%.2f,%.2f,"          // roll/pitch/yaw measured (deg)
            "SP,%.2f,%.2f,%.2f,"            // roll/pitch/yaw setpoint (deg)
            "U,%.3f,%.3f,%.3f,%.3f,"        // u_roll, u_pitch, u_yaw, collective
            "PWM,%u,%u,%u,%u,"              // m1..m4 (µs)
            "ARM,%u,"
            "AGE,%lu\r\n",
            (unsigned long)ctrl_dbg.timestamp_ms,
            roll_deg_meas, pitch_deg_meas, yaw_deg_meas,
            roll_deg_sp,   pitch_deg_sp,   yaw_deg_sp,
            ctrl_dbg.u_roll, ctrl_dbg.u_pitch, ctrl_dbg.u_yaw, ctrl_dbg.collective,
            (unsigned)pwm_dbg.m1_us,
            (unsigned)pwm_dbg.m2_us,
            (unsigned)pwm_dbg.m3_us,
            (unsigned)pwm_dbg.m4_us,
            (unsigned)pwm_dbg.armed,
            (unsigned long)pwm_dbg.cmd_age_ms
        );
    }
}

void Log_Task_Init(void)
{
    const osThreadAttr_t log_attr = {
        .name       = "log_task",
        .priority   = osPriorityLow,
        .stack_size = 1024
    };

    osThreadNew(log_task, NULL, &log_attr);
}
