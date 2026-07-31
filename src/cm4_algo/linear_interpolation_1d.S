.syntax unified
.thumb
.cpu cortex-m4
.fpu fpv4-sp-d16

.global lerp_1d
.type lerp_1d, %function

lerp_1d:
	VSUB.F32  S5, S4, S0
	VSUB.F32  S6, S1, S0
	VDIV.F32  S5, S5, S6
	VSUB.F32  S6, S3, S2
	VMUL.F32  S5, S5, S6
	VADD.F32  S0, S5, S2
	
	BX        LR
	