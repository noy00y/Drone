#include <stdint.h>

#define ESTIMATION_TASK_PERIOD_MS   (2U)      // 500 Hz
#define ESTIMATION_TASK_STACK      (512U)    
#define ESTIMATION_TASK_PRIO       osPriorityHigh3 

typedef struct {
    float q0, q1, q2, q3; // quaternion (w, x, y, z)
    float roll;
    float pitch;
    float yaw;
    uint32_t timestamp_us;
} attitude_state_t;