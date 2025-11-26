// log_task.c
#include "log_task.h"
#include "imu_task.h"
#include "est_task.h"
#include "ctrl_task.h"
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

        // ----- 3) Get latest attitude & controller debug -----
        attitude_state_t att;
        get_attitude(&att);

        ctrl_debug_t dbg;
        CTRL_GetDebug(&dbg);

        const float rad2deg = 180.0f / (float)M_PI;

        float roll_deg_meas  = dbg.roll_meas  * rad2deg;
        float pitch_deg_meas = dbg.pitch_meas * rad2deg;
        float yaw_deg_meas   = dbg.yaw_meas   * rad2deg;

        float roll_deg_sp  = dbg.roll_sp  * rad2deg;
        float pitch_deg_sp = dbg.pitch_sp * rad2deg;
        float yaw_deg_sp   = dbg.yaw_sp   * rad2deg;

        // ----- 4) CSV-style line for Python plotting -----
        // Format:
        // CTRL,timestamp_ms,roll_deg_meas,pitch_deg_meas,yaw_deg_meas,
        //      roll_deg_sp,pitch_deg_sp,yaw_deg_sp,
        //      u_roll,u_pitch,u_yaw,collective
        printf("CTRL,%lu,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.3f,%.3f,%.3f,%.3f\r\n",
               (unsigned long)dbg.timestamp_ms,
               roll_deg_meas, pitch_deg_meas, yaw_deg_meas,
               roll_deg_sp,   pitch_deg_sp,   yaw_deg_sp,
               dbg.u_roll, dbg.u_pitch, dbg.u_yaw, dbg.collective);
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
