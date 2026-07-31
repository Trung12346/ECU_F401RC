.syntax unified
.thumb
	
.global avg_128
.type avg_128, %function

//input must not exceed 12-bit
avg_128:
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
	LDM       R0!, {R5-R12} //8 - 15
	UADD16    R4, R4, R5
	UADD16    R4, R4, R6
	UADD16    R4, R4, R7
	UADD16    R4, R4, R8
	UADD16    R4, R4, R9
	UADD16    R4, R4, R10
	UADD16    R4, R4, R11
	UADD16    R4, R4, R12
	UXTH      R5, R4
	LSR       R6, R4, #16
	ADD       R3, R5, R6

	LDM       R0!, {R5-R12} //16 - 23
	MOV       R4, #0
	UADD16    R4, R4, R5
	UADD16    R4, R4, R6
	UADD16    R4, R4, R7
	UADD16    R4, R4, R8
	UADD16    R4, R4, R9
	UADD16    R4, R4, R10
	UADD16    R4, R4, R11
	UADD16    R4, R4, R12
	LDM       R0!, {R5-R12} //24 - 31
	UADD16    R4, R4, R5
	UADD16    R4, R4, R6
	UADD16    R4, R4, R7
	UADD16    R4, R4, R8
	UADD16    R4, R4, R9
	UADD16    R4, R4, R10
	UADD16    R4, R4, R11
	UADD16    R4, R4, R12
	UXTH      R5, R4
	LSR       R6, R4, #16
	ADD       R5, R5, R6
	ADD       R3, R3, R5

	LDM       R0!, {R5-R12} //32 - 39
	MOV       R4, #0
	UADD16    R4, R4, R5
	UADD16    R4, R4, R6
	UADD16    R4, R4, R7
	UADD16    R4, R4, R8
	UADD16    R4, R4, R9
	UADD16    R4, R4, R10
	UADD16    R4, R4, R11
	UADD16    R4, R4, R12
	LDM       R0!, {R5-R12} //40 - 47
	UADD16    R4, R4, R5
	UADD16    R4, R4, R6
	UADD16    R4, R4, R7
	UADD16    R4, R4, R8
	UADD16    R4, R4, R9
	UADD16    R4, R4, R10
	UADD16    R4, R4, R11
	UADD16    R4, R4, R12
	UXTH      R5, R4
	LSR       R6, R4, #16
	ADD       R5, R5, R6
	ADD       R3, R3, R5

	LDM       R0!, {R5-R12} //48 - 55
	MOV       R4, #0
	UADD16    R4, R4, R5
	UADD16    R4, R4, R6
	UADD16    R4, R4, R7
	UADD16    R4, R4, R8
	UADD16    R4, R4, R9
	UADD16    R4, R4, R10
	UADD16    R4, R4, R11
	UADD16    R4, R4, R12
	LDM       R0!, {R5-R12} //56 - 63
	UADD16    R4, R4, R5
	UADD16    R4, R4, R6
	UADD16    R4, R4, R7
	UADD16    R4, R4, R8
	UADD16    R4, R4, R9
	UADD16    R4, R4, R10
	UADD16    R4, R4, R11
	UADD16    R4, R4, R12
	UXTH      R5, R4
	LSR       R6, R4, #16
	ADD       R5, R5, R6
    ADD       R3, R3, R5
	
	LSR       R0, R3, #7
	
	LDM       SP!, {R3-R12}
	BX        LR