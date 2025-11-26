#include "imu_task.h"
#include "imu.h"
#include "cmsis_os2.h"
#include <stdio.h>

osMessageQueueId_t imu_q = NULL;

// IMU Sampler Thread:
static void imu_task(void *arguement)
{
    (void)arguement;
    const uint32_t period_ticks = 1U; // 1 ms @ 1 khz rtos tick
    uint32_t last_wake = osKernelGetTickCount(); // reference for delay until 

    printf("IMU task started at tick %lu\r\n", (unsigned long)osKernelGetTickCount());

    for (;;)
    {
        // wait until next 1 ms boundary
        uint32_t now = osKernelGetTickCount();
        uint32_t next = last_wake + period_ticks;

        int32_t diff = (int32_t)(next - now); // signed difference to handle wrap around
    
        if (diff > 0) 
        {
            osDelay((uint32_t)diff);
            last_wake = next;
        }
        else {last_wake = now;} // skip sleeping and resync schedule to now


        imu_sample_t sample; // timestamp as close as possible to actual sampling instant
        sample.timestamp_ms = osKernelGetTickCount();

        // SPI read from IMU (blocking)
        if (IMU_ReadRaw(&sample.raw) == HAL_OK)
        {
            if (imu_q != NULL) // push into queue
            {
                // 0 - priority (unused), 0 - no wait nonblocking
                osStatus_t state = osMessageQueuePut(imu_q, &sample, 0, 0);
            
                // full queue --> discard oldest sample and redo
                if (state == osErrorResource) 
                {
                    imu_sample_t del;
                    (void)osMessageQueueGet(imu_q, &del, NULL, 0);
                    (void)osMessageQueuePut(imu_q, &sample, 0, 0);
                }
            } 
        }
        // osDelay(1U);
    }
}

void IMU_Task_Init(void) 
{
    // Create queue for imu_sample_t
    imu_q = osMessageQueueNew(IMU_QUEUE_LENGTH, sizeof(imu_sample_t), NULL);

    // create imu_task() thread
    const osThreadAttr_t imu_task_attr = 
    {
        .name = "imu_task",
        .priority = osPriorityHigh3,
        .stack_size = 1024 
    };
    (void)osThreadNew(imu_task, NULL, &imu_task_attr);
}

bool IMU_GetNextSample(imu_sample_t *out, uint32_t timeout_ms)
{
    if ((out == NULL) || (imu_q == NULL)) {return false;}
    osStatus_t state = osMessageQueueGet(imu_q, out, NULL, timeout_ms);
    return (state == osOK);
}