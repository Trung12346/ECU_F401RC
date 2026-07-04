#include "stm32f401xc.h"

void dma2_init(uintptr_t mbuf)
{
	RCC->AHB1ENR |= (uint32_t)RCC_AHB1ENR_DMA2EN;
	
	DMA2_Stream0->CR &= ~(uint32_t)DMA_SxCR_EN;
	
	while(DMA2_Stream0->CR & DMA_SxCR_EN);
	
	DMA2->LIFCR = (uint32_t)
	(
		DMA_LIFCR_CFEIF0 |
		DMA_LIFCR_CDMEIF0 |
		DMA_LIFCR_CTEIF0 |
		DMA_LIFCR_CHTIF0 |
		DMA_LIFCR_CTCIF0
	);
	//stream configuration
	DMA2_Stream0->CR &= ~(uint32_t)
	(
		DMA_SxCR_MSIZE |
		DMA_SxCR_PSIZE
	);
	DMA2_Stream0->CR &= ~(uint32_t)
	(
		DMA_SxCR_CHSEL | //channel0 adc1
		DMA_SxCR_DIR     //peripheral to memory
	);
	DMA2_Stream0->CR |= (uint32_t)
	(
		DMA_SxCR_MSIZE_0 | //16bit
		DMA_SxCR_PSIZE_0 | //16bit
		DMA_SxCR_MINC |    //memory increment
		DMA_SxCR_PL |      //very high priority
		DMA_SxCR_CIRC |    //circular mode
		DMA_SxCR_TCIE
	);
	
	DMA2_Stream0->NDTR = (uint32_t)0x7U;
	
	DMA2_Stream0->PAR = (uintptr_t)&ADC1->DR;
	
	DMA2_Stream0->M0AR = (uintptr_t)mbuf;
}

void dma2_en(void)
{
	DMA2_Stream0->CR |= (uint32_t)DMA_SxCR_EN;
}

