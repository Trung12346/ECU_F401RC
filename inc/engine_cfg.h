#ifndef ENGINE_CFG_H
#define ENGINE_CFG_H

#include <stdint.h>

typedef struct 
{
	float VE_MAP[14][18];
	float AFR_MAP[14][18];
	float MAP_CLKUP[18];
	float MAP_RLKUP[14];
	float AFR_CONV;
	float IJT_FR;
	float IJT_CONV;
	float IJT_IGT_DISABLED_CONV;
	float MAP_MIN_VOLTG;
	float MAP_MAX_VOLTG;
	float MAP_MIN_PRES;
	float MAP_MAX_PRES;
	float FRP_MIN_VOLTG;
	float FRP_MAX_VOLTG;
	float FRP_MIN_PRES;
	float FRP_MAX_PRES;
	float DISPMT;
	uint32_t CYL_CNT;
	float CRK_SENSOR_OFST;
	float CYL_OFST;
	float IGT_MIN_RPM;
	float IGT_MAX_RPM;
	float IGT_MIN_OFST;
	float IGT_MAX_OFST;
	float IGT_POST_IGT_DISABLED_OFST;
	float CYLC_IDLE_CUTOFF_RPM;
	float CYLC_IDLE_THRESHLD_RPM;
	float CYLC_IDLE_THRESHLD_TEMP;
} ENGIN_CFG_t;

#endif