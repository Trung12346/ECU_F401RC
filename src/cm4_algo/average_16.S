.syntax unified
.thumb
	
.global avg_16
.type avg_16, %function

//input must not exceed 12-bit
avg_16:
	STMDB     SP!, {R3-R12}
	LDM       R0!, {R5-R12} //0 - 7
	MOV       R3, #0
	UADD16    R4, R5, R6
	UADD16    R4, R4, R7
	UADD16    R4, R4, R8
	UADD16    R4, R4, R9
	UADD16    R4, R4, R10
	UADD16    R4, R4, R11
	UADD16    R4, R4, R12
	UXTH      R5, R4
	LSR       R6, R4, #16
	ADD       R3, R5, R6
	
	LSR       R0, R3, #4
	
	LDM       SP!, {R3-R12}
	BX        LR