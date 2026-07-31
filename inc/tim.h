#ifndef TIM_H
#define TIM_H

#include <stdint.h>
#include "stm32f401xc.h"
#include "main.h"

#define TIM10_FREQ 20000.0f

void tim_init(void);
	
void tim_en(void);

#endif