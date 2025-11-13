#include "pwm.h"

static inline uint16_t clamp_us (int v)
{
    if (v < 1000) v = 1000;
    if (v > 2000) v = 2000;
    return (uint16_t)v;
}

void pwm_init_safe_idle (void)
{
    // start pwm output
    extern TIM_HandleTypeDef htim1;
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2);
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3);
    HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_4);

    // initial safe vals
    TIM1->CCR1 = 1000;
    TIM1->CCR2 = 1000;
    TIM1->CCR3 = 1000;
    TIM1->CCR4 = 1000;
}

void pwm_write_all_us (int m1, int m2, int m3, int m4) 
{
    TIM1->CCR1 = clamp_us(m1);
    TIM1->CCR2 = clamp_us(m2);
    TIM1->CCR3 = clamp_us(m3);
    TIM1->CCR4 = clamp_us(m4);
}

void pwm_write_us (int ch, int us) 
{
    uint16_t v = clamp_us(us);
    switch (ch) 
    {
        case 1: TIM1->CCR1 = v; break;
        case 2: TIM1->CCR2 = v; break;
        case 3: TIM1->CCR3 = v; break;
        case 4: TIM1->CCR4 = v; break;
    }
}