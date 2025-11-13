#pragma once
#include <stdint.h>

void timing_init(void);
static inline uint32_t timing_us (void) 
{
    // 168 mhz / 168 = 1 mhz --> 1 us per tick
    return (uint32_t)(DWT->CYCCNT/168u);
}