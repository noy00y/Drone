#include "cmsis_os2.h"
#include "imu.h"
#include <stdint.h>
#include <stdbool.h>
 
#define IMU_QUEUE_LENGTH   32

typedef struct
{
    uint32_t   timestamp_ms;  // RTOS tick timestamp
    imu_raw_t  raw;           // raw accel/gyro/temp
} imu_sample_t;

extern osMessageQueueId_t imu_q; // global message queue handler

/* Functions */
// create imu sampling queue and start imu task at 1 khz
// called after imu_init and before kernel start
void IMU_Task_Init(void);

// blocking receive of the next sample
// timeout_ms - how long to block for in ms
// return true - sample received
//        false - timeout/error
bool IMU_GetNextSample(imu_sample_t *out, uint32_t timeout_ms);
