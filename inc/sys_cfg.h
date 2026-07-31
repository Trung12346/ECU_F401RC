#ifndef SYS_CFG_H
#define SYS_CFG_H

#include <stdint.h>

#define APB1_FREQ 42000000
#define APB2_FREQ 84000000
#define TIM1_MAX UINT16_MAX
#define TIM2_MAX UINT32_MAX
#define TIM3_MAX UINT16_MAX
#define TIM4_MAX UINT16_MAX
#define TIM5_MAX UINT32_MAX
#define TIM10_MAX UINT16_MAX

extern const uint32_t HRDW_DEBOUNCE;
extern const float TIM1_FREQ;
extern const float TIM2_FREQ;
extern const float TIM3_FREQ;
extern const float TIM4_FREQ;
extern const float TIM5_FREQ;
extern const float TIM10_FREQ;

extern const float TIM10_T_ON;

#endif