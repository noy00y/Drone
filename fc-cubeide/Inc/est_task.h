#include <stdint.h>

typedef struct {
    float q0, q1, q2, q3; // quaternion (w, x, y, z)
    float roll;
    float pitch;
    float yaw;
    uint32_t timestamp_us;
} attitude_state_t;