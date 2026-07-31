#include "engine_cfg.h"

//TDC: top dead center
//CS: compression stroke
//FSM: finite-state machine
//RPM: revolution per minute
//IGNITION_DISABLED, RUNNING mode -> states of engine FSM

#define _VE_MAP \
{ \
	{ 48.0f,  48.0f,  48.0f,  48.0f,  49.0f,  54.0f,  58.0f,  61.0f,  65.0f,  68.0f,  71.0f,  72.0f,  74.0f,  74.0f,  74.0f,  74.0f,  74.0f,  74.0f}, \
	{ 55.0f,  55.0f,  55.0f,  56.0f,  56.0f,  61.0f,  67.0f,  70.0f,  73.0f,  76.0f,  79.0f,  82.0f,  83.0f,  82.0f,  82.0f,  82.0f,  81.0f,  81.0f}, \
	{ 61.0f,  61.0f,  61.0f,  61.0f,  63.0f,  68.0f,  72.0f,  75.0f,  78.0f,  81.0f,  84.0f,  86.0f,  87.0f,  87.0f,  86.0f,  86.0f,  85.0f,  85.0f}, \
	{ 69.0f,  69.0f,  69.0f,  69.0f,  71.0f,  75.0f,  78.0f,  81.0f,  84.0f,  88.0f,  89.0f,  91.0f,  92.0f,  91.0f,  90.0f,  89.0f,  89.0f,  89.0f}, \
	{ 80.0f,  80.0f,  80.0f,  80.0f,  81.0f,  84.0f,  87.0f,  90.0f,  92.0f,  95.0f,  96.0f,  96.0f,  95.0f,  95.0f,  95.0f,  93.0f,  93.0f,  93.0f}, \
	{ 88.0f,  88.0f,  88.0f,  88.0f,  88.0f,  89.0f,  92.0f,  94.0f,  97.0f, 100.0f, 102.0f, 102.0f, 101.0f,  99.0f,  98.0f,  97.0f,  96.0f,  96.0f}, \
	{ 95.0f,  95.0f,  95.0f,  95.0f,  95.0f,  95.0f,  97.0f,  99.0f, 102.0f, 104.0f, 105.0f, 104.0f, 103.0f, 101.0f,  99.0f,  98.0f,  98.0f,  98.0f}, \
	{102.0f, 102.0f, 102.0f, 102.0f, 102.0f, 102.0f, 102.0f, 104.0f, 106.0f, 107.0f, 107.0f, 105.0f, 103.0f, 101.0f, 100.0f,  99.0f,  99.0f,  98.0f}, \
	{104.0f, 104.0f, 104.0f, 104.0f, 104.0f, 104.0f, 105.0f, 106.0f, 107.0f, 108.0f, 108.0f, 106.0f, 105.0f, 102.0f, 100.0f,  99.0f,  99.0f,  98.0f}, \
	{105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 106.0f, 108.0f, 109.0f, 110.0f, 107.0f, 105.0f, 103.0f, 101.0f,  99.0f,  99.0f,  98.0f}, \
	{105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 107.0f, 108.0f, 110.0f, 111.0f, 110.0f, 107.0f, 104.0f, 102.0f, 100.0f,  99.0f,  98.0f}, \
	{105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 107.0f, 109.0f, 111.0f, 112.0f, 110.0f, 108.0f, 105.0f, 103.0f, 100.0f,  99.0f,  98.0f}, \
	{105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 107.0f, 110.0f, 112.0f, 113.0f, 112.0f, 110.0f, 108.0f, 104.0f, 101.0f,  99.0f,  98.0f}, \
	{105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 105.0f, 107.0f, 110.0f, 112.0f, 113.0f, 112.0f, 110.0f, 108.0f, 104.0f, 101.0f,  99.0f,  98.0f} \
}
#define _AFR_MAP \
{ \
	{14.00f, 13.80f, 13.70f, 13.60f, 13.50f, 13.30f, 13.20f, 13.10f, 13.00f, 12.90f, 12.80f, 12.70f, 12.60f, 12.60f, 12.50f, 12.50f, 12.40f, 12.40f }, \
	{13.80f, 13.60f, 13.50f, 13.40f, 13.30f, 13.10f, 13.00f, 12.90f, 12.80f, 12.70f, 12.60f, 12.50f, 12.40f, 12.40f, 12.30f, 12.30f, 12.20f, 12.20f }, \
	{13.60f, 13.50f, 13.40f, 13.30f, 13.20f, 13.00f, 12.90f, 12.80f, 12.70f, 12.60f, 12.50f, 12.40f, 12.30f, 12.30f, 12.20f, 12.20f, 12.10f, 12.10f }, \
	{13.40f, 13.30f, 13.20f, 13.10f, 13.00f, 12.80f, 12.70f, 12.60f, 12.50f, 12.40f, 12.30f, 12.20f, 12.10f, 12.10f, 12.00f, 12.00f, 11.90f, 11.90f }, \
	{13.10f, 13.00f, 12.90f, 12.80f, 12.60f, 12.40f, 12.30f, 12.20f, 12.10f, 12.00f, 11.90f, 11.80f, 11.70f, 11.70f, 11.60f, 11.60f, 11.50f, 11.50f }, \
	{12.80f, 12.70f, 12.60f, 12.40f, 12.30f, 12.10f, 12.00f, 11.90f, 11.80f, 11.70f, 11.60f, 11.50f, 11.40f, 11.40f, 11.30f, 11.30f, 11.20f, 11.20f }, \
	{12.50f, 12.40f, 12.20f, 12.10f, 12.00f, 11.80f, 11.70f, 11.60f, 11.50f, 11.40f, 11.30f, 11.20f, 11.10f, 11.10f, 11.00f, 11.00f, 10.90f, 10.90f }, \
	{12.30f, 12.20f, 12.10f, 12.00f, 11.80f, 11.70f, 11.60f, 11.50f, 11.40f, 11.30f, 11.20f, 11.10f, 11.00f, 11.00f, 10.90f, 10.90f, 10.80f, 10.80f }, \
	{12.20f, 12.10f, 12.00f, 11.90f, 11.70f, 11.60f, 11.50f, 11.40f, 11.30f, 11.20f, 11.10f, 11.00f, 10.90f, 10.90f, 10.80f, 10.80f, 10.70f, 10.70f }, \
	{12.10f, 12.00f, 11.90f, 11.80f, 11.60f, 11.50f, 11.40f, 11.30f, 11.20f, 11.10f, 11.00f, 10.90f, 10.80f, 10.80f, 10.70f, 10.70f, 10.60f, 10.60f }, \
	{12.00f, 11.90f, 11.80f, 11.70f, 11.50f, 11.40f, 11.30f, 11.20f, 11.10f, 11.00f, 10.90f, 10.80f, 10.70f, 10.70f, 10.60f, 10.60f, 10.50f, 10.50f }, \
	{11.90f, 11.80f, 11.70f, 11.60f, 11.40f, 11.30f, 11.20f, 11.10f, 11.00f, 10.90f, 10.80f, 10.70f, 10.60f, 10.60f, 10.50f, 10.50f, 10.40f, 10.40f }, \
	{11.80f, 11.70f, 11.60f, 11.50f, 11.30f, 11.20f, 11.10f, 11.00f, 10.90f, 10.80f, 10.70f, 10.60f, 10.50f, 10.50f, 10.40f, 10.40f, 10.30f, 10.30f }, \
	{11.70f, 11.60f, 11.50f, 11.40f, 11.20f, 11.10f, 11.00f, 10.90f, 10.80f, 10.70f, 10.60f, 10.50f, 10.40f, 10.40f, 10.30f, 10.30f, 10.20f, 10.20f } \
}
#define _MAP_CLKUP {500.0f, 750.0f, 1000.0f, 1250.0f, 1500.0f, 2000.0f, 2500.0f, 3000.0f, 3500.0f, 4000.0f, 4500.0f, 5000.0f, 5500.0f, 6000.0f, 6500.0f, 7000.0f, 7500.0f, 8000.0f}
#define _MAP_RLKUP {21.37f, 31.03f, 36.54f, 41.37f, 61.36f, 81.36f, 101.35f, 121.35f, 141.34f, 161.34f, 181.34f, 201.33f, 251.66f, 301.30f}

#define _AFR_CONV 1.0f  //conversion rate to adapt to different fuel blend without mapping all values of AFR_MAP
#define _IJT_FR 200.0f  //fuel injector flow rate at 100% duty cycle @ 3 bar (cc/min)
#define _IJT_CONV 1.0f  //conversion rate to adapt to different fuel blend viscousity
#define _IJT_IGT_DISABLED_CONV 0.1f  //conversion rate at IGNITION_DISABLED mode
#define _MAP_MIN_VOLTG 0.25f
#define _MAP_MAX_VOLTG 4.75f
#define _MAP_MIN_PRES 20.0f
#define _MAP_MAX_PRES 300.0f
#define _FRP_MIN_VOLTG 0.3f
#define _FRP_MAX_VOLTG 4.8f
#define _FRP_MIN_PRES 0
#define _FRP_MAX_PRES 500
#define _DISPMT 392  //engine total displacement
#define _CRK_SENSOR_OFST -45.0f  //crank sensor fall edge position relatively
												 //to first cylinder TDC
												 //note: first TDC after crank sensor signal will be determined as TDC of CS of cylinder 1 on software
#define _CYL_OFST 405.0f  //second cylinder TDC of CS position relatively to first cylinder TDC of CS
#define _IGT_MIN_RPM 1000.0f  //ignition advance gradient starts at this RPM
#define _IGT_MAX_RPM 6000.0f  //ignition advance gradient ends at this RPM
#define _IGT_MIN_OFST -10.0f  //ignition minimum position relatively to first cylinder TDC
#define _IGT_MAX_OFST -25.0f  //ignition maximum position relatively to first cylinder TDC
#define _IGT_POST_IGT_DISABLED_OFST 0  //soft start when engine mode transits from IGNITION_DISABLED to RUNNING
#define _CYLC_IDLE_CUTOFF_RPM 2000.0f  //RPM above this mark at idle will set engine in IGNITION_DISABLED mode
#define _CYLC_IDLE_THRESHLD_RPM 700.0f  //RPM under this mark at idle will set engine in RUNNING mode
#define _CYLC_IDLE_THRESHLD_TEMP 80.0f  //temperature above this mark will allow cyclic idle

const EngineConfig_t ENGIN_CFG = (EngineConfig_t)
{
	.VE_MAP = _VE_MAP,
	.MAP_RLKUP = _MAP_RLKUP,
	.MAP_CLKUP = _MAP_CLKUP,
	.AFR_MAP = _AFR_MAP,
	.AFR_CONV = _AFR_CONV,
	.IJT_FR = _IJT_FR,
	.IJT_CONV = _IJT_CONV,
	.IJT_IGT_DISABLED_CONV = _IJT_IGT_DISABLED_CONV,
	.MAP_MIN_VOLTG = _MAP_MIN_VOLTG,
	.MAP_MAX_VOLTG = _MAP_MAX_VOLTG,
	.MAP_MIN_PRES = _MAP_MIN_PRES,
	.MAP_MAX_PRES = _MAP_MAX_PRES,
	.FRP_MIN_VOLTG = _FRP_MIN_VOLTG,
	.FRP_MAX_VOLTG = _FRP_MAX_VOLTG,
	.FRP_MIN_PRES = _FRP_MIN_PRES,
	.FRP_MAX_PRES = _FRP_MAX_PRES,
	.DISPMT = _DISPMT,
	.CYL_CNT = 2U,
	.CRK_SENSOR_OFST = _CRK_SENSOR_OFST,
	.CYL_OFST = _CYL_OFST,
	.IGT_MIN_RPM = _IGT_MIN_RPM,
	.IGT_MAX_RPM = _IGT_MAX_RPM,
	.IGT_MIN_OFST = _IGT_MIN_OFST,
	.IGT_MAX_OFST = _IGT_MAX_OFST,
	.IGT_POST_IGT_DISABLED_OFST = _IGT_POST_IGT_DISABLED_OFST,
	.CYLC_IDLE_CUTOFF_RPM = _CYLC_IDLE_CUTOFF_RPM,
	.CYLC_IDLE_THRESHLD_RPM = _CYLC_IDLE_THRESHLD_RPM,
	.CYLC_IDLE_THRESHLD_TEMP = _CYLC_IDLE_THRESHLD_TEMP
};