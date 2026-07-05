#include <stdint.h>
#include "stm32f401xc.h"

void pio_init(void)
{
	RCC->AHB1ENR |= (uint32_t)(RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOAEN);
	//analog mode for adc
	GPIOA->MODER |= (uint32_t)
	(
		GPIO_MODER_MODE0 |
		GPIO_MODER_MODE1 |
		GPIO_MODER_MODE3 |
		GPIO_MODER_MODE4 |
		GPIO_MODER_MODE5 |
		GPIO_MODER_MODE6 |
		GPIO_MODER_MODE7
	);
	//alternate function for tim
	GPIOB->MODER &= ~(uint32_t)
	(
		GPIO_MODER_MODE3 |
		GPIO_MODER_MODE4 |
		GPIO_MODER_MODE5 |
		GPIO_MODER_MODE6 |
		GPIO_MODER_MODE8
	);
	GPIOA->MODER &= ~(uint32_t)GPIO_MODER_MODER15;
	GPIOB->MODER |= (uint32_t)
	(
		GPIO_MODER_MODE3_1 |
		GPIO_MODER_MODE4_1 |
		GPIO_MODER_MODE5_1 |
		GPIO_MODER_MODE6_1 |
		GPIO_MODER_MODE8_1
	);
	GPIOA->MODER |= (uint32_t)GPIO_MODER_MODER15_1;
	//alternate function for spi
	GPIOB->MODER &= ~(uint32_t)
	(
		GPIO_MODER_MODE12 |
		GPIO_MODER_MODE13 |
		GPIO_MODER_MODE14 |
		GPIO_MODER_MODE15
	);
	GPIOB->MODER |= (uint32_t)
	(
		GPIO_MODER_MODE12_1 |
		GPIO_MODER_MODE13_1 |
		GPIO_MODER_MODE14_1 |
		GPIO_MODER_MODE15_1
	);
	//alternate function for irq
	GPIOA->MODER &= ~(uint32_t)GPIO_MODER_MODE11;
	GPIOA->MODER |= (uint32_t)GPIO_MODER_MODE11_1;
	//alternate function pushpull output
	GPIOB->OTYPER &= ~(uint32_t)
	(
		GPIO_OTYPER_OT3 |
		GPIO_OTYPER_OT4 |
		GPIO_OTYPER_OT5 |
		GPIO_OTYPER_OT6 |
		GPIO_OTYPER_OT8 |
		GPIO_OTYPER_OT12 |
		GPIO_OTYPER_OT13 |
		GPIO_OTYPER_OT14 |
		GPIO_OTYPER_OT15
	);
	GPIOA->OTYPER &= ~(uint32_t)GPIO_OTYPER_OT15;
	//alternate function low speed output
	GPIOB->OSPEEDR &= ~(uint32_t)
	(
		GPIO_OSPEEDR_OSPEED3 |
		GPIO_OSPEEDR_OSPEED4 |
		GPIO_OSPEEDR_OSPEED5 |
		GPIO_OSPEEDR_OSPEED6 |
		GPIO_OSPEEDR_OSPEED8 
	);
	//alternate function very high speed output
	GPIOB->OSPEEDR |= (uint32_t)
	(
		GPIO_OSPEEDR_OSPEED12 |
		GPIO_OSPEEDR_OSPEED13 |
		GPIO_OSPEEDR_OSPEED14 |
		GPIO_OSPEEDR_OSPEED15
	);
	GPIOA->OSPEEDR &= ~(uint32_t)GPIO_OSPEEDR_OSPEED15;
	//alternate function pulldown output
	GPIOB->PUPDR &= ~(uint32_t)
	(
		GPIO_PUPDR_PUPD3 |
		GPIO_PUPDR_PUPD4 |
		GPIO_PUPDR_PUPD5 |
		GPIO_PUPDR_PUPD6 |
		GPIO_PUPDR_PUPD8
	);
	GPIOA->PUPDR &= ~(uint32_t)GPIO_PUPDR_PUPDR15;
	GPIOB->PUPDR |= (uint32_t)
	(
		GPIO_PUPDR_PUPD3_1 |
		GPIO_PUPDR_PUPD4_1 |
		GPIO_PUPDR_PUPD5_1 |
		GPIO_PUPDR_PUPD6_1 |
		GPIO_PUPDR_PUPD8_1
	);
	GPIOA->PUPDR |= (uint32_t)GPIO_PUPDR_PUPD15_1;
	//irq pulldown input
	GPIOA->PUPDR &= ~(uint32_t)GPIO_PUPDR_PUPD11;
	GPIOA->PUPDR |= (uint32_t)GPIO_PUPDR_PUPD11_1;
	//config multiplexer routing alternate function to io
	GPIOB->AFR[0] &= ~(uint32_t)
	(
		GPIO_AFRL_AFSEL3 |
		GPIO_AFRL_AFSEL4 |
		GPIO_AFRL_AFSEL5 |
		GPIO_AFRL_AFSEL6
	);
	GPIOB->AFR[1] &= ~(uint32_t)
	(
		GPIO_AFRH_AFSEL8 |
		GPIO_AFRH_AFSEL12 |
		GPIO_AFRH_AFSEL13 |
		GPIO_AFRH_AFSEL14 |
		GPIO_AFRH_AFSEL15
	);
	GPIOA->AFR[1] &= ~(uint32_t)GPIO_AFRH_AFSEL15;
	GPIOB->AFR[0] |= (uint32_t)
	(
		0x1U << GPIO_AFRL_AFSEL3_Pos | //tim2_ch2
		0x2U << GPIO_AFRL_AFSEL4_Pos | //tim3_ch1
		0x2U << GPIO_AFRL_AFSEL5_Pos | //tim3_ch2
		0x2U << GPIO_AFRL_AFSEL6_Pos   //tim4_ch1
	);
	GPIOB->AFR[1] |= (uint32_t)
	(
		0x3U << GPIO_AFRH_AFSEL8_Pos |  //tim10_ch1
		0x5U << GPIO_AFRH_AFSEL12_Pos | //spi2_nss
		0x5U << GPIO_AFRH_AFSEL13_Pos | //spi2_sck
		0x5U << GPIO_AFRH_AFSEL14_Pos | //spi2_miso
		0x5U << GPIO_AFRH_AFSEL15_Pos   //spi2_mosi
	);
	GPIOA->AFR[1] |= (uint32_t)0x1U << GPIO_AFRH_AFSEL15_Pos; //tim2_ch1
}