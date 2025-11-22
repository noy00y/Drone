// // log_task.c
// #include "log_task.h"
// #include "imu_task.h"
// #include "imu.h"
// #include "usart.h"
// #include <stdio.h>
// //#include <stdint.h>
// //extern UART_HandleTypeDef huart2;

// //int _write(int ch, FILE *f)
// //{
// //    (void)f; // unused
// //    uint8_t c = (uint8_t)ch;
// //    HAL_UART_Transmit(&huart2, &c, 1, HAL_MAX_DELAY);
// //    return ch;
// //}

// static void log_task(void *argument)
// {
//     (void)argument;

//     const uint32_t period_ticks = 10;     // 100 Hz = 10 ms
//     uint32_t last_wake = osKernelGetTickCount();

//     imu_sample_t sample;
//     imu_scaled_t sc;

//     for (;;)
//     {
//         // ----- 1) Wait for next 10 ms boundary -----
//         uint32_t now = osKernelGetTickCount();
//         uint32_t next = last_wake + period_ticks;
//         int32_t diff = (int32_t)(next - now);

//         if (diff > 0)
//         {
//             osDelay((uint32_t)diff);
//             last_wake = next;
//         }
//         else
//         {
//             last_wake = now;
//         }

//         // ----- 2) Drain all pending IMU samples (keep the newest) -----
//         bool got = false;
//         while (IMU_GetNextSample(&sample, 0))     // 0 ms → non-blocking
//         {
//             got = true;
//         }

//         if (!got)
//             continue; // No fresh IMU sample this cycle

//         // ----- 3) Scale raw → physical units -----
//         IMU_Scale(&sample.raw, &sc);

//         // ----- 4) Print out -----
//         printf("[IMU %lu ms] "
//                "A[g]=[%.3f %.3f %.3f]  "
//                "G[dps]=[%6.1f %6.1f %6.1f]\r\n",
//                (unsigned long)sample.timestamp_ms,
//                sc.ax_g, sc.ay_g, sc.az_g,
//                sc.gx_dps, sc.gy_dps, sc.gz_dps);
//     }
// }

// log_task.c
#include "log_task.h"
#include "imu_task.h"
#include "imu.h"
#include <stdio.h>
#include <stdint.h>

static void log_task(void *argument)
{
    (void)argument;

    const uint32_t period_ticks = 10;     // 100 Hz = 10 ms
    uint32_t last_wake = osKernelGetTickCount();

    imu_sample_t sample;
    imu_scaled_t sc;

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
        if (IMU_GetNextSample(&sample, osWaitForever))
        {
            IMU_Scale(&sample.raw, &sc);

            printf("[IMU %lu ms] "
                   "A[g]=[%.3f %.3f %.3f]  "
                   "G[dps]=[%6.1f %6.1f %6.1f]\r\n",
                   (unsigned long)sample.timestamp_ms,
                   sc.ax_g, sc.ay_g, sc.az_g,
                   sc.gx_dps, sc.gy_dps, sc.gz_dps);
        }
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
