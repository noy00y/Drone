#include "ahrs_mahony.h"
#include <math.h>

void AHRS_Init(ahrs_t *s, float kp, float ki)
{
    s->q0 = 1.0f;
    s->q1 = 0.0f;
    s->q2 = 0.0f;
    s->q3 = 0.0f;
    s->ex_int = s->ey_int = s->ez_int = 0.0f;
    s->kp = kp;
    s->ki = ki;
}

void AHRS_Update(ahrs_t *s, float gx, float gy, float gz, float ax, float ay, float az, float dt)
{
    float q0 = s->q0;
    float q1 = s->q1;
    float q2 = s->q2;
    float q3 = s->q3;

    // Normalize accelerometer but if invalid just integrate gyro
    float norm = ax*ax + ay*ay + az*az;
    if (norm > 1e-6f) 
    {
        norm = 1.0f / sqrtf(norm);
        ax *= norm;
        ay *= norm;
        az *= norm;
    }
    else 
    {
        ax = ay = 0.0f;
        az = 0.0f;
    }

    // est gravity direction from quaternion
    float vx = 2.0f * (q1*q3 - q0*q2);
    float vy = 2.0f * (q0*q1 + q2*q3);
    float vz = q0*q0 - q1*q1 - q2*q2 + q3*q3;

    // error - cross product b/w measured and est gravity
    float ex = (ay * vz - az * vy);
    float ey = (az * vx - ax * vz);
    float ez = (ax * vy - ay * vx);

    // bias est
    if (s->ki > 0.0f) {
        s->ex_int += ex * s->ki * dt;
        s->ey_int += ey * s->ki * dt;
        s->ez_int += ez * s->ki * dt;
    } else {
        s->ex_int = s->ey_int = s->ez_int = 0.0f;
    }
 
    // apply gyro feedback
    gx += s->kp * ex + s->ex_int;
    gy += s->kp * ey + s->ey_int;
    gz += s->kp * ez + s->ez_int;

    // quaternion derivative from corrected gyro
    float q0_dot = 0.5f * (-q1*gx - q2*gy - q3*gz);
    float q1_dot = 0.5f * ( q0*gx + q2*gz - q3*gy);
    float q2_dot = 0.5f * ( q0*gy - q1*gz + q3*gx);
    float q3_dot = 0.5f * ( q0*gz + q1*gy - q2*gx);

    // Integrate
    q0 += q0_dot * dt;
    q1 += q1_dot * dt;
    q2 += q2_dot * dt;
    q3 += q3_dot * dt;

    // normalize quaternion
    norm = q0*q0 + q1*q1 + q2*q2 + q3*q3;
    if (norm > 0.0f) {
        norm = 1.0f / sqrtf(norm);
        q0 *= norm;
        q1 *= norm;
        q2 *= norm;
        q3 *= norm;
    }
    s->q0 = q0;
    s->q1 = q1;
    s->q2 = q2;
    s->q3 = q3;
}

void AHRS_QuatToEuler(const ahrs_t *s, float *roll, float *pitch, float *yaw)
{
    const float q0 = s->q0;
    const float q1 = s->q1;
    const float q2 = s->q2;
    const float q3 = s->q3;
    
    // ZYX (yaw-pitch-roll) convention
    // Roll
    *roll = atan2f(2.0f * (q0*q1 + q2*q3),
                   1.0f - 2.0f * (q1*q1 + q2*q2));
    
    // Pitch
    float sinp = 2.0f * (q0*q2 - q3*q1);
    if (fabsf(sinp) >= 1.0f)
        *pitch = copysignf((float)M_PI / 2.0f, sinp); // use 90° if out of range
    else
        *pitch = asinf(sinp);

    // Yaw
    
}