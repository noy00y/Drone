#include "cmsis_os2.h"
#include "imu_task.h"
#include "imu.h"
#include "ahrs_mahony.h"
#include "est_task.h"

// extern osMessageQueueId_t imu_q = NULL; // queue

// internal estimator states:
static ahrs_t AHRS_state;
static attitude_state_t g_attitude_state;
static uint32_t last_sample_tick = 0; // track latest imu dt 

// Declarations:
void get_attitude(attitude_state_t *out);
extern void est_task(void *arguement);

void EST_Task_Init(void)
{
    AHRS_Init(&AHRS_state, 4.0f, 0.05f); // initial sample gain
    g_attitude_state.q0 = 1.0f;
    g_attitude_state.q1 = 0.0f;
    g_attitude_state.q2 = 0.0f;
    g_attitude_state.q3 = 0.0f;
    g_attitude_state.roll  = 0.0f;
    g_attitude_state.pitch = 0.0f;
    g_attitude_state.yaw   = 0.0f;
    g_attitude_state.timestamp_us = 0;

    // Task init
    const osThreadAttr_t est_task_attr = 
    {
        .name = "est_task",
        .priority = osPriorityHigh3,
        .stack_size = 1024
    };
    osThreadNew(est_task, NULL, &est_task_attr);
}

void get_attitude(attitude_state_t *out){*out = g_attitude_state;}

void est_task(void *arguement)
{
    (void)arguement;
    const uint32_t period_ms = ESTIMATION_TASK_PERIOD_MS;
    imu_sample_t sample;
    imu_sample_t latest_sample; 
    uint8_t have_sample = 0;

    uint32_t last_wake = osKernelGetTickCount();

    while (1)
    {
        // 500 hz tick
        uint32_t now = osKernelGetTickCount();
        uint32_t elapsed = now - last_wake;
        if (elapsed < period_ms){osDelay(period_ms - elapsed);}
        last_wake = osKernelGetTickCount();

        // Drain queue and keep latest sample
        have_sample = 0;
        osStatus_t status;
        do 
        {
            status = osMessageQueueGet(imu_q, &sample, NULL, 0);
            if (status == osOK)
            {
                latest_sample = sample;
                have_sample = 1;
            }
        } while (status == osOK);
        if (!have_sample) {continue;} // NTS: if no new sample --> skip the cycle

        // Corrected dt
        float dt;
        uint32_t now_tick = latest_sample.timestamp_us;   // this is actually in TICKS

        // First sample tick
        if (last_sample_tick == 0U) { dt = (float)period_ms * 1e-3f; } 
        else 
        {
            uint32_t dt_ticks = now_tick - last_sample_tick;  // unsigned handles wrap
            dt = (float)dt_ticks * 1e-3f;                     // 1 tick = 1 ms --> seconds

            // Clamp dt to avoid filter blowups
            if (dt < 0.0005f) dt = 0.0005f;   
            if (dt > 0.0200f) dt = 0.0200f;   
        }
        last_sample_tick = now_tick;

        // scale raw imu to usable units
        imu_scaled_t sc;
        IMU_Scale(&latest_sample.raw, &sc);

        // accel: convert g --> m/s^2
        const float g = 9.80665f;
        float ax = sc.ax_g * g;
        float ay = sc.ay_g * g;
        float az = sc.az_g * g;

        // gyro: deg/s --> rad/s
        const float DEG2RAD = 3.14159265358979323846f / 180.0f;
        float gx = sc.gx_dps * DEG2RAD;
        float gy = sc.gy_dps * DEG2RAD;
        float gz = sc.gz_dps * DEG2RAD;

        // Run AHRS with CORRECT units + dt
        AHRS_Update(&AHRS_state, gx, gy, gz, ax, ay, az, dt);

        float roll, pitch, yaw;
        AHRS_QuatToEuler(&AHRS_state, &roll, &pitch, &yaw);
        
        g_attitude_state.q0 = AHRS_state.q0;
        g_attitude_state.q1 = AHRS_state.q1;
        g_attitude_state.q2 = AHRS_state.q2;
        g_attitude_state.q3 = AHRS_state.q3;
        g_attitude_state.roll  = roll;
        g_attitude_state.pitch = pitch;
        g_attitude_state.yaw   = yaw;
        g_attitude_state.timestamp_us = latest_sample.timestamp_us; // still in ticks (ms)
    }
}

