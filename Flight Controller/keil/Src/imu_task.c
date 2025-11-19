#include "imu_task.h"
#include "imu.h"
#include "cmsis_os2.h"

osMessageQueueId_t g_imu_sample_queue = NULL;

// IMU Sampler Thread:
static void imu_task(void *arguement)
{
    (void)arguement;
    const uint32_t period_ticks = 1U; // 1 ms @ 1 khz rtos tick
    uint32_t last_wake = osKernelGetTickCount(); // reference for delay until 

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
            if (g_imu_sample_queue != NULL) // push into queue
            {
                // 0 - priority (unused), 0 - no wait nonblocking
                osStatus_t state = osMessageQueuePut(g_imu_sample_queue, &sample, 0, 0);
            
                // full queue --> discard oldest sample and redo
                if (state == osErrorResource) 
                {
                    imu_sample_t del;
                    (void)osMessageQueueGet(g_imu_sample_queue, &del, NULL, 0);
                    (void)osMessageQueuePut(g_imu_sample_queue, &sample, 0, 0);
                }
            } 
        }
    }
}

void IMU_Task_Init(void) 
{
    // Create queue for imu_sample_t
    g_imu_sample_queue = osMessageQueueNew(IMU_QUEUE_LENGTH, sizeof(imu_sample_t), NULL);

    // create imu_task() thread
    const osThreadAttr_t imu_task_attr = 
    {
        .name = "imu_task",
        .priority = osPriorityHigh, // highest priority normal task
        .stack_size = 512 // 512 bytes enough for SPI driver functions
    };
    (void)osThreadNew(imu_task, NULL, &imu_task_attr);
}

bool IMU_GetNextSample(imu_sample_t *out, uint32_t timeout_ms)
{
    if ((out == NULL) || (g_imu_sample_queue == NULL)) {return false;}
    osStatus_t state = osMessageQueueGet(g_imu_sample_queue, out, NULL, timeout_ms);
    return (state == osOK);
}