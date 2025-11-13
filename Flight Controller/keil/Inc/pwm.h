#pragma once
#include <stdint.h>
#include "stm32f4xx.h"

#ifdef __cplusplus
extern "C" 
{
#endif
    void pwm_init_safe_idle(void);
    void pwm_write_all_us(int m1, int m2, int m3, int m4);
    void pwm_write_us(int ch, int us);
#ifdef __cplusplus
}
#endif