#ifndef MAIN_H
#define MAIN_H

#include <stdint.h>

#define STATIC_INLINE __attribute__((always_inline)) static inline
#define ALIGN_WORD __attribute__((aligned(4)))

#define APB2_CLOCK 84000000
#define APB1_CLOCK 42000000

typedef enum
{
	SYSTEM_INIT,
	SYSTEM_STB,
	SYSTEM_NORM_OPERATION,
	SYSTEM_IGNITION_DISABLED
} SystemState;

typedef enum
{
	PROGRAM_DEF_REV_LIMIT,
	PROGRAM_DEF_CYCLIC_IDLE,
	PROGRAM_DEF_DEFAULT
} ProgramDefinedState;

typedef enum
{
	false,
	true
} bool;

typedef struct
{
	float RPM;
	float MAP;
	float FRP;
	float TPS;
	float IAT;
	float ET1;
	float ET2;
	float OT;
} EngineModel_t;

STATIC_INLINE void sys_fsm_transit(uint8_t *system_state, uint8_t *system_state_his, SystemState state)
{
	*system_state_his = *system_state;
	*system_state = state;
}

STATIC_INLINE void stall(uint32_t unit)
{
	while(unit--);
}

#endif