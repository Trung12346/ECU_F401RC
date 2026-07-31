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
#include "pid.h"
#include "interpolation.h"
#include "fuel_pump.h"

volatile uint16_t adc_scan[7];
volatile uint32_t crank_tmstp;
const uint8_t ft_arr_size = 128;
const uint8_t st_arr_size = 16;
const uint8_t rpm_threshold = 100;
ALIGN_WORD uint16_t map_his[128];
ALIGN_WORD uint16_t frp_his[128];
ALIGN_WORD uint16_t iat_his[128];
ALIGN_WORD uint16_t tps_his[16];
ALIGN_WORD uint16_t ot_his[16];
ALIGN_WORD uint16_t et1_his[16];
ALIGN_WORD uint16_t et2_his[16];
ALIGN_WORD PIDModel_t pid_fp;
uint8_t ft_id = 0;
uint8_t st_id = 0;
uint16_t tps_default;
SystemState ss = SYSTEM_INIT;
ProgramDefinedState pds = PROGRAM_DEF_DEFAULT;
EngineModel_t engine;
PIDModel_t fp_pid = (PIDModel_t)
{
	.kp = 1.5f,
	.ki = 0.3f,
	.kd = 0.05f,
	.integral = 0.0f,
	.previous_error = 0.0f,
	.integral_max = 2.0f,
	.integral_min = -2.0f,
	.output = 0.0f
};
bool ft_rdy;
bool frp_rdy;
uint16_t loop_tmstp;
float dt; //firmware for(;;) loop delta time

uint16_t debug;
int main()
{
	//configure hardware
	core_clock_init();
	pio_init();
	dma2_init((uintptr_t)adc_scan, (uintptr_t)&crank_tmstp);
	adc_init();
	tim_init();

	dma2_en();
	adc_en();
	tim_en();
	
	NVIC_EnableIRQ(DMA2_Stream0_IRQn);
	NVIC_EnableIRQ(DMA2_Stream4_IRQn);
	NVIC_SetPriority(DMA2_Stream0_IRQn, 14);
	NVIC_SetPriority(DMA2_Stream4_IRQn, 0);
	
	//init software
	const uint32_t tim1_clk = APB2_CLOCK / (TIM1->PSC + 1);
	
	for(uint8_t i = 0; i < 16; i++)
	{
		adc_strt();
		stall(5000);
	}
	tps_default = (uint16_t)(avg_16(tps_his) + 15U); //error margin
	
	//main loop
	for(;;)
	{
		//update engine model
		float map_v = avg_128(map_his);
		engine.MAP = lerp_1d(
			ENGIN_CFG.MAP_MIN_VOLTG,
			ENGIN_CFG.MAP_MAX_VOLTG,
			ENGIN_CFG.MAP_MIN_PRES,
			ENGIN_CFG.MAP_MAX_PRES,
			map_v
		);
		
		float frp_v = adc2v(avg_128(frp_his));
		engine.FRP = lerp_1d(
			ENGIN_CFG.FRP_MIN_VOLTG,
			ENGIN_CFG.FRP_MAX_VOLTG,
			ENGIN_CFG.FRP_MIN_PRES,
			ENGIN_CFG.FRP_MAX_PRES,
			frp_v
		);
		engine.TPS = avg_16(tps_his);
		//engine.IAT = avg_16(iat_his);
		//engine.ET1 = avg_16(et1_his);
		//engine.ET2 = avg_16(et2_his);
		//engine.OT = avg_16(ot_his);

		//process component parameters
		dt = (float) (TIM1->CNT - loop_tmstp) / tim1_clk;
		
		fp_pid.output = pid(
			&fp_pid,
			engine.FRP / ENGIN_CFG.FRP_MAX_PRES,
			dt
		);
		
		//update hardware
		fuel_pmp_set(fp_pid.output);
		//---------------
		
		switch(ss)
		{
			case SYSTEM_INIT:
				if(ft_rdy && frp_rdy)
				{
					ss = SYSTEM_STB;
				}
				break;
			case SYSTEM_STB:
				if(engine.RPM >= rpm_threshold)
				{
					ss = SYSTEM_NORM_OPERATION;
				}
				break;
			case SYSTEM_NORM_OPERATION:
				if(engine.RPM == 0)
				{
					ss = SYSTEM_STB;
				}
				break;
			case SYSTEM_IGNITION_DISABLED:
				break;
			default:
				break;
		}
		switch(pds)
		{
			case PROGRAM_DEF_DEFAULT:
				break;
			case PROGRAM_DEF_CYCLIC_IDLE:
				break;
			case PROGRAM_DEF_REV_LIMIT:
				break;
			default:
				break;
		}
	}
	
	if(engine.FRP >= 2.5f)
	{
		frp_rdy = true;
	}
	
	loop_tmstp = TIM1->CNT;
}

void DMA2_Stream4_IRQHandler()
{
	if(DMA2->HISR & DMA_HISR_TCIF4)
	{
		//miracle happens here
	}
	dma2_s4_cis();
}

void DMA2_Stream0_IRQHandler()
{
	if(DMA2->LISR & DMA_LISR_TCIF0)
	{
		map_his[ft_id] = adc_scan[0];
		frp_his[ft_id] = adc_scan[1];
		iat_his[ft_id] = adc_scan[2];
		tps_his[st_id] = adc_scan[3];
		et1_his[st_id] = adc_scan[4];
		et2_his[st_id] = adc_scan[5];
		ot_his[st_id] = adc_scan[6];
		
		if(++ft_id >= ft_arr_size) {ft_id = 0; ft_rdy = true;}
		if(++st_id >= st_arr_size) st_id = 0;
	}
	dma2_s0_cis();
}
