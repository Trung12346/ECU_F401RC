#include "core.h"
#include "pio.h"
#include "dma.h"
#include "adc.h"
#include "tim.h"
#include "engine_cfg.h"
#include "phys_const.h"
#include "sys_cfg.h"
#include <stdint.h>
#include "stm32f401xc.h"
#include "average.h"

uint16_t adc_scan[7];
uint16_t map_his[128];
uint16_t frp_his[128];
uint16_t iat_his[128];
uint16_t tps_his[16];
uint16_t ot_his[16];
uint16_t et1_his[16];
uint16_t et2_his[16];
uint16_t ft_id = 0;
uint16_t st_id = 0;
uint16_t ft_arr_size = 128;
uint16_t st_arr_size = 16;
	
int main()
{

	
	core_clock_init();
	pio_init();
	dma2_init((uintptr_t)adc_scan);
	adc_init();
	tim_init();
	avg_128(map_his);
	
	for(;;);
}

void DMA2_Stream0_IRQHandler()
{
	if(DMA2->LISR & DMA_LISR_TCIF0)
	{
		if(ft_id >= ft_arr_size) ft_id = 0;
		if(st_id >= st_arr_size) st_id = 0;
		
		map_his[ft_id] = adc_scan[0];
		frp_his[ft_id] = adc_scan[1];
		iat_his[ft_id] = adc_scan[2];
		tps_his[st_id] = adc_scan[3];
		et1_his[st_id] = adc_scan[4];
		et2_his[st_id] = adc_scan[5];
		ot_his[st_id] = adc_scan[6];
		
		ft_id++;
		st_id++;
	}
	dma2_s0_cis();
}
