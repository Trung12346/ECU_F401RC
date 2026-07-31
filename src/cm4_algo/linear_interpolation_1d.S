.syntax unified
.thumb
	
.global lerp_1d
.type lerp_1d, %function

lerp_1d:
	VMOV      S0, R0
	VMOV      S1, R1
	VMOV      S2, R2
	VMOV      S3, R3
	VLDR.32   S4, [SP]
	
	VSUB.32   S5, S4, S0
	VSUB.32   S6, S1, S0
	VDIV.32   S5, S5, S6
	VSUB.32   S6, S3, S2
	VMUL.32   S5, S5, S6
	VADD.32   S0, S5, S2
	
	BX        LR
	