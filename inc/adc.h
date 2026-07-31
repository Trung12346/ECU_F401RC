#ifndef ADC_H
#define ADC_H

#include "main.h"
#include "stm32f401xc.h"

extern void adc_init(void);

STATIC_INLINE void adc_en(void)
{
	ADC1->CR2 |= ADC_CR2_ADON;
}

STATIC_INLINE void adc_strt(void)
{
	ADC1->CR2 |= ADC_CR2_SWSTART;
}

STATIC_INLINE float adc2v(uint16_t adc)
{
	return (float) (adc / 4095.0f * 5.f);
}

//STATIC_INLINE uint16_t v2adc(float voltage)
//{
//	return (uint16_t) (voltage / 3.3f * 4095.0f);
//}

#endif