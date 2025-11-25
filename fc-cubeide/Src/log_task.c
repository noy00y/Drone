// log_task.c
#include "log_task.h"
#include "imu_task.h"
#include "est_task.h"
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

        // Block until there is at least one IMU sample in the queue
        // if (IMU_GetNextSample(&sample, osWaitForever))
        // {
        //     IMU_Scale(&sample.raw, &sc);

        //     printf("[IMU %lu ms] "
        //            "A[g]=[%.3f %.3f %.3f]  "
        //            "G[dps]=[%6.1f %6.1f %6.1f]\r\n",
        //            (unsigned long)sample.timestamp_ms,
        //            sc.ax_g, sc.ay_g, sc.az_g,
        //            sc.gx_dps, sc.gy_dps, sc.gz_dps);
        // }

        // 2) New estimator print
        attitude_state_t att;
        get_attitude(&att);

        // radians → degrees:
        // deg = rad * (180 / π)
        const float rad2deg = 180.0f / (float)M_PI;
        float roll_deg  = att.roll  * rad2deg;
        float pitch_deg = att.pitch * rad2deg;
        float yaw_deg   = att.yaw   * rad2deg;

        printf("[EST %lu ms] "
            "RPY[deg]=[%.2f %.2f %.2f] "
            "q=[%.3f %.3f %.3f %.3f]\r\n",
            (unsigned long)(att.timestamp_ms / 1000U),
            roll_deg, pitch_deg, yaw_deg,
            att.q0, att.q1, att.q2, att.q3);
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
