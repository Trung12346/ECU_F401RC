#ifndef DMA_H
#define DMA_H

#include <stdint.h>
#include "stm32f401xc.h"

void dma2_init(uintptr_t adc_mbuf, uintptr_t tim_mbuf);

void dma2_en(void);

static inline void dma2_s0_cis()
{
	DMA2->LIFCR = DMA_LIFCR_CTCIF0;
}

#endif