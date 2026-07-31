#include "stm32f401xc.h"
#include "sys_cfg.h"

//TIM1 captures crank fall edge and request DMA to move TIM2->CNT to memory | 21MHz
//TIM2 is the engine logic thread | 42MHz
//TIM3 generates PWM and turned on/off by TIM2 interrupt request | 1kHz
//TIM4 generates PWM controlling motor | 500kHz
//TIM5 requests ADC sequence conversion periodically | 500kHz
//TIM10 generates PFM controlling solenoid | 20kHz

void tim_init(void)
{
	//started to get lazy commenting init code, only core logic code will be documented carefully from now on
	RCC->APB1ENR |= (uint32_t)
	(
		RCC_APB1ENR_TIM2EN |
		RCC_APB1ENR_TIM3EN |
		RCC_APB1ENR_TIM4EN |
		RCC_APB1ENR_TIM5EN
	);
	RCC->APB2ENR |= (uint32_t)
	(
		RCC_APB2ENR_TIM10EN |
		RCC_APB2ENR_TIM1EN
	);
	
	TIM2->SR = 0;
	TIM1->SR = 0;
	
	TIM2->CR1 &= ~(uint32_t)TIM_CR1_CEN;
	TIM1->CR1 &= ~(uint32_t)TIM_CR1_CEN;
	TIM3->CR1 &= ~(uint32_t)TIM_CR1_CEN;
	TIM4->CR1 &= ~(uint32_t)TIM_CR1_CEN;
	TIM5->CR1 &= ~(uint32_t)TIM_CR1_CEN;
	TIM10->CR1 &= ~(uint32_t)TIM_CR1_CEN;
	
	TIM2->CR1 = (uint32_t)0x0U;
	TIM1->CR1 = (uint32_t)0x0U;
	TIM3->CR1 = (uint32_t)0x0U;
	TIM4->CR1 = (uint32_t)0x0U;
	TIM5->CR1 = (uint32_t)0x0U;
	TIM10->CR1 = (uint32_t)0x0U;
	
	TIM3->CR1 |= (uint32_t)TIM_CR1_ARPE;
	TIM4->CR1 |= (uint32_t)TIM_CR1_ARPE;
	TIM10->CR1 |= (uint32_t)TIM_CR1_ARPE;
	
	TIM2->CR2 = (uint32_t)0x0U;
	TIM1->CR2 = (uint32_t)0x0U;
	TIM3->CR2 = (uint32_t)0x0U;
	TIM4->CR2 = (uint32_t)0x0U;
	TIM5->CR2 = (uint32_t)0x0U;
	TIM10->CR2 = (uint32_t)0x0U;
	TIM5->CR2 |= (uint32_t)TIM_CR2_MMS_1;
	
	TIM2->DIER |= (uint32_t)
	(
		TIM_DIER_CC3IE | //
		TIM_DIER_CC4IE   //
	);
	TIM1->DIER |= (uint32_t)
	(
		TIM_DIER_CC4IE |
		TIM_DIER_CC4DE
	);
	
	TIM2->CCMR1 = (uint32_t)0x0U;
	TIM3->CCMR1 = (uint32_t)0x0U;
	TIM4->CCMR1 = (uint32_t)0x0U;
	TIM10->CCMR1 = (uint32_t)0x0U;
	TIM2->CCMR1 |= (uint32_t)
	(
		TIM_CCMR1_OC1M_0 | //
		TIM_CCMR1_OC2M_0
	);
	TIM3->CCMR1 |= (uint32_t)
	(
		0x6U << TIM_CCMR1_OC1M_Pos |
		0x6U << TIM_CCMR1_OC2M_Pos |
		TIM_CCMR1_OC1PE |
		TIM_CCMR1_OC2PE
	);
	TIM4->CCMR1 |= (uint32_t)
	(
		0x6U << TIM_CCMR1_OC1M_Pos |
		0x6U << TIM_CCMR1_OC2M_Pos |
		TIM_CCMR1_OC1PE |
		TIM_CCMR1_OC2PE
	);
	TIM10->CCMR1 |= (uint32_t)
	(
		0x6U << TIM_CCMR1_OC1M_Pos |
		TIM_CCMR1_OC1PE
	);
	
	TIM2->CCMR2 = (uint32_t)0x0U;
	TIM1->CCMR2 = (uint32_t)0x0U;
	TIM1->CCMR2 |= (uint32_t)
	(
		TIM_CCMR2_CC4S_0 |
		HRDW_DEBOUNCE << TIM_CCMR2_IC4F_Pos
	);
	
	TIM2->CCER = (uint32_t)0x0U;
	TIM1->CCER = (uint32_t)0x0U;
	TIM2->CCER |= (uint32_t)
	(
		TIM_CCER_CC1E |
		TIM_CCER_CC2E
	);
	TIM1->CCER |= (uint32_t)
	(
		TIM_CCER_CC4E |
		0x1U << TIM_CCER_CC4P_Pos
	);
	
	TIM2->CNT = (uint32_t)0x0U; //reset counter
	TIM1->CNT = (uint32_t)0x0U;
	TIM3->CNT = (uint32_t)0x0U;
	TIM4->CNT = (uint32_t)0x0U;
	TIM5->CNT = (uint32_t)0x0U;
	TIM10->CNT = (uint32_t)0x0U;
	
	TIM2->PSC = (uint32_t)0x0U; //presc of 1
	TIM1->PSC = (uint32_t)0x3U;
	TIM3->PSC = (uint32_t)0xA40FU;
	TIM4->PSC = (uint32_t)0x53U;
	TIM5->PSC = (uint32_t)0x53U;
	TIM10->PSC = (uint32_t)0xA40FU;
	
	TIM2->ARR = (uint32_t)0xFFFFFFFFU;
	TIM1->ARR = (uint32_t)0xFFFF;
	TIM3->ARR = (uint32_t)0x4U;
	TIM4->ARR = (uint32_t)0x1F3U;
	TIM5->ARR = (uint32_t)0x4E1U;
	
	TIM2->EGR = (uint32_t)TIM_EGR_UG;
	TIM1->EGR = (uint32_t)TIM_EGR_UG;
	TIM3->EGR = (uint32_t)TIM_EGR_UG;
	TIM4->EGR = (uint32_t)TIM_EGR_UG;
	TIM5->EGR = (uint32_t)TIM_EGR_UG;
	TIM10->EGR = (uint32_t)TIM_EGR_UG;
}

void tim_en(void)
{
	TIM2->CR1 |= (uint32_t)TIM_CR1_CEN;
	TIM1->CR1 |= (uint32_t)TIM_CR1_CEN;
	TIM3->CR1 |= (uint32_t)TIM_CR1_CEN;
	TIM4->CR1 |= (uint32_t)TIM_CR1_CEN;
	TIM5->CR1 |= (uint32_t)TIM_CR1_CEN;
	TIM10->CR1 |= (uint32_t)TIM_CR1_CEN;
}

