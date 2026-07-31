#ifndef PID_H
#define PID_H

#include <stdint.h>

typedef struct {
	float kp;
	float ki;
	float kd;
	volatile float integral;
	volatile float previous_error;
	float setpoint;	
	float integral_max;
	float integral_min;
	float output;
} PIDModel_t;

extern float pid(PIDModel_t* instance, float reading, float dt);

#endif