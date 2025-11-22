#include "cmsis_os2.h"
#include "imu_task.h"
#include "est_task.h"

extern osMessageQueueId_t imu_q; // queue
static attitude_state_t g_attitude_state;

void get_attitude(attitude_state_t *out)
{
    *out = g_attitude_state;
}