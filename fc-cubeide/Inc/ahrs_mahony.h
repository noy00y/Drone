#include <stdint.h>

typedef struct 
{
    float q0, q1, q2, q3;
    float ex_int, ey_int, ez_int; // integral error for bias compensation
    float kp; // proportional gain
    float ki; // integral gain
} ahrs_t;

void AHRS_Init(ahrs_t *s, float kp, float ki);
void AHRS_Update(ahrs_t *s, float gx, float gy, float gz,   // rad/s
                            float ax, float ay, float az,   // m/s^2
                            float dt);
                            
// convert quaternion to zyx euler in radians
void AHRS_QuatToEuler(const ahrs_t *s, float *roll, float *pitch, float *yaw); 
