#include "stm32f401xc.h"

void dma2_init(uintptr_t adc_mbuf, uintptr_t tim_mbuf)
{
	RCC->AHB1ENR |= (uint32_t)RCC_AHB1ENR_DMA2EN;
	
	DMA2_Stream0->CR &= ~(uint32_t)DMA_SxCR_EN;
	DMA2_Stream4->CR &= ~(uint32_t)DMA_SxCR_EN;
	
	while(DMA2_Stream0->CR & DMA_SxCR_EN);
	while(DMA2_Stream4->CR & DMA_SxCR_EN);
	
	DMA2->LIFCR = (uint32_t)
	(
		DMA_LIFCR_CFEIF0 |
		DMA_LIFCR_CDMEIF0 |
		DMA_LIFCR_CTEIF0 |
		DMA_LIFCR_CHTIF0 |
		DMA_LIFCR_CTCIF0 |
		DMA_LIFCR_CFEIF1 |
		DMA_LIFCR_CDMEIF1 |
		DMA_LIFCR_CTEIF1 |
		DMA_LIFCR_CHTIF1 |
		DMA_LIFCR_CTCIF1
	);
	//stream configuration
	DMA2_Stream0->CR &= ~(uint32_t)
	(
		DMA_SxCR_MSIZE |
		DMA_SxCR_PSIZE
	);
	DMA2_Stream4->CR &= ~(uint32_t)
	(
		DMA_SxCR_MSIZE |
		DMA_SxCR_PSIZE
	);
	DMA2_Stream0->CR &= ~(uint32_t)
	(
		DMA_SxCR_CHSEL | //channel0 adc1
		DMA_SxCR_DIR   | //peripheral to memory
		DMA_SxCR_PL
	);
	DMA2_Stream4->CR &= ~(uint32_t)
	(
		DMA_SxCR_CHSEL | 
		DMA_SxCR_DIR     //peripheral to memory
	);
	
	DMA2_Stream0->CR |= (uint32_t)
	(
		DMA_SxCR_MSIZE_0 | //16-bit
		DMA_SxCR_PSIZE_0 | //16-bit
		DMA_SxCR_MINC |    //memory increment
		DMA_SxCR_PL_1 |    //high priority
		DMA_SxCR_CIRC |    //circular mode
		DMA_SxCR_TCIE
	);
	DMA2_Stream4->CR |= (uint32_t)
	(
		DMA_SxCR_MSIZE_1 | //32-bit
		DMA_SxCR_PSIZE_1 | //32-bit
		DMA_SxCR_PL      | //very high priority
		DMA_SxCR_CHSEL_1 |
		DMA_SxCR_CHSEL_2 | //channel6 tim1_ch4
		DMA_SxCR_TCIE
	);
	
	DMA2_Stream0->NDTR = (uint32_t)0x7U;
	DMA2_Stream4->NDTR = (uint32_t)0x1U;
	
	DMA2_Stream0->PAR = (uintptr_t)&ADC1->DR;
	DMA2_Stream4->PAR = (uintptr_t)&TIM2->CNT;
	
	DMA2_Stream0->M0AR = (uintptr_t)adc_mbuf;
	DMA2_Stream4->M0AR = (uintptr_t)tim_mbuf;
}

void dma2_en(void)
{
	DMA2_Stream0->CR |= (uint32_t)DMA_SxCR_EN;
	DMA2_Stream4->CR |= (uint32_t)DMA_SxCR_EN;
}

