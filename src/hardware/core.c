#include "stm32f401xc.h"
#include <stdint.h>

void core_clock_init()
{
	RCC->CR |= (uint32_t)RCC_CR_HSION;
	for(;!(RCC->CR & RCC_CR_HSIRDY_Msk););
	
	FLASH->ACR &= ~(uint32_t)(FLASH_ACR_DCEN |
								FLASH_ACR_ICEN |
								FLASH_ACR_PRFTEN |
								FLASH_ACR_LATENCY_3WS);
	FLASH->ACR |= (uint32_t)(FLASH_ACR_DCEN |
								FLASH_ACR_ICEN |
								FLASH_ACR_PRFTEN |
								FLASH_ACR_LATENCY_3WS);
	
	RCC->CR &= ~(uint32_t)RCC_CR_HSEON;
	RCC->CR |= (uint32_t)RCC_CR_HSEON;
	for(;!(RCC->CR & RCC_CR_HSERDY_Msk););
	
	RCC->PLLCFGR &= ~(uint32_t)(RCC_PLLCFGR_PLLM | RCC_PLLCFGR_PLLN | RCC_PLLCFGR_PLLP);
	RCC->PLLCFGR |= (uint32_t)RCC_PLLCFGR_PLLSRC_HSE;
	RCC->PLLCFGR |= (uint32_t)0x19U << RCC_PLLCFGR_PLLM_Pos;
	RCC->PLLCFGR |= (uint32_t)0xA8U << RCC_PLLCFGR_PLLN_Pos;
	RCC->CR |= (uint32_t)RCC_CR_PLLON;
	for(;!(RCC->CR & RCC_CR_PLLRDY_Msk););
	
	RCC->CFGR &= ~(uint32_t)(RCC_CFGR_HPRE | RCC_CFGR_PPRE2 | RCC_CFGR_PPRE1);
	RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV2;
	RCC->CFGR &= ~(uint32_t)RCC_CFGR_SW;
	RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;
	for(;(RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL;);
	
}