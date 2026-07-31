#include "interpolation.h"
#include "stm32f401xc.h"
#include "sys_cfg.h"

void fuel_pmp_set(float pid_o)
{
	float T;
	float arr;
	float min_tim10_cnter_freq = (float)TIM10_FREQ / TIM10_MAX + 0.005f; //round up to precision of .2f to prevent float precision truncation
	float freq = lerp_1d(
		0.0f,
		1.0f,
		0.0f,
		20.0f, //frequency clamp theoretically cannot be greater than (1 / TIM1_T_ON) with fuel pump recovery time unaccounted
		pid_o //0.0f - 1.0f
	);
	
	if(freq <= min_tim10_cnter_freq) TIM10->CCER &= ~(uint32_t)TIM_CCER_CC1E;
	else 
	{
		T = 1.0f / freq;
		arr = T * TIM10_FREQ;
		
		TIM10->ARR = (uint32_t)arr;
		
		TIM10->CCER |= (uint32_t)TIM_CCER_CC1E;
	}
}