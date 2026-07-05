#ifndef TIM_H
#define TIM_H

#include <stdint.h>
#include "stm32f401xc.h"

void tim_init(void);
	
void tim_en(void);
	
static inline void tim10_set_arr(uint32_t arr)
{
	TIM10->ARR = arr;
	TIM10->EGR = (uint32_t)TIM_EGR_UG;
}

#endif