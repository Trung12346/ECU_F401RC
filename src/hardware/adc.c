#include "stm32f401xc.h"
#include "main.h"

void adc_init(void)
{
	RCC->APB2ENR |= (uint32_t)RCC_APB2ENR_ADC1EN;
	
	ADC1->CR1 &= ~(uint32_t)ADC_CR1_RES;
	ADC1->CR1 |= (uint32_t)ADC_CR1_SCAN;
	
	ADC1->CR2 &= ~(uint32_t)
	(
		ADC_CR2_ADON |
		ADC_CR2_CONT |
		ADC_CR2_EOCS |
		ADC_CR2_ALIGN |
		ADC_CR2_JEXTEN |
		ADC_CR2_EXTEN
	);
	ADC1->CR2 |= (uint32_t)
	(
		ADC_CR2_DMA |
		ADC_CR2_EXTEN_0 |
		(0xAU << ADC_CR2_EXTSEL_Pos) | //tim5_ch1
		ADC_CR2_DDS
	);
	
	ADC1->SMPR2 |= (uint32_t)
	(
		ADC_SMPR2_SMP0 |
		ADC_SMPR2_SMP1 |
		ADC_SMPR2_SMP3 |
		ADC_SMPR2_SMP4 |
		ADC_SMPR2_SMP5 |
		ADC_SMPR2_SMP6 |
		ADC_SMPR2_SMP7
	);
	
	ADC1->SQR1 &= ~(uint32_t)ADC_SQR1_L;
	ADC1->SQR1 |= (uint32_t)0x6 << ADC_SQR1_L_Pos;
	ADC1->SQR3 &= ~(uint32_t)
	(
		ADC_SQR3_SQ1 |
		ADC_SQR3_SQ2 |
		ADC_SQR3_SQ3 |
		ADC_SQR3_SQ4 |
		ADC_SQR3_SQ5 |
		ADC_SQR3_SQ6 
	);
	ADC1->SQR2 &= ~(uint32_t)ADC_SQR2_SQ7;
	ADC1->SQR3 |= (uint32_t)
	(
		0x0U << ADC_SQR3_SQ1_Pos |
		0x1U << ADC_SQR3_SQ2_Pos |
		0x3U << ADC_SQR3_SQ3_Pos |
		0x4U << ADC_SQR3_SQ4_Pos |
		0x5U << ADC_SQR3_SQ5_Pos |
		0x6U << ADC_SQR3_SQ6_Pos 
	);
	ADC1->SQR2 |= (uint32_t)0x7U << ADC_SQR2_SQ7_Pos;
}


