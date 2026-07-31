.syntax unified
.thumb
.cpu cortex-m4
.fpu fpv4-sp-d16

.global pid
.type pid, %function

pid:
	MOV       R1, #0
	MOVW      R2, #0x0000
	MOVT      R2, #0x3F80
	
	VMOV      S3, R1
	VMOV      S4, R2
	VLDR.32   S5, [R0]       //kp
	VLDR.32   S6, [R0, #4]   //ki
	VLDR.32   S7, [R0, #8]   //kd
	VLDR.32   S8, [R0, #12]  //integral
	VLDR.32   S9, [R0, #16]  //previous_error
	VLDR.32   S10, [R0, #20] //set_point
	VLDR.32   S11, [R0, #24] //integral_max
	VLDR.32   S12, [R0, #28] //intergral_min
	
	VSUB.F32  S13, S10, S0
	VMLA.F32  S8, S13, S1
	
	VCMP.F32  S8, S11
	VMRS      APSR_nzcv, FPSCR
	BGT       integral_overflow
	
	VCMP.F32  S8, S12
	VMRS      APSR_nzcv, FPSCR
	BLT       integral_underflow
	
	B         con_0
	
integral_overflow:
	VMOV      S8, S11
	B         con_0
	
integral_underflow:
	VMOV      S8, S12
	B         con_0
	
con_0:
	VSTR.32   S8, [R0, #12]
	
	VSUB.F32  S14, S13, S9
	VDIV.F32  S14, S14, S1
	
	VSTR.32   S13, [R0, #16]
	
	VMOV      S0, S3
	VMLA.F32  S0, S5, S13
	VMLA.F32  S0, S6, S8
	VMLA.F32  S0, S7, S14
	
	VCMP.F32  S0, S4
	VMRS      APSR_nzcv, FPSCR
	BGT       o_overflow
	
	VCMP.F32  S0, S3
	VMRS      APSR_nzcv, FPSCR
	BLT       o_underflow
	
	B         return

o_overflow:
	VMOV      S0, S4
	B         return

o_underflow:
	VMOV      S0, S3
	B         return
	
return:
	BX        LR
	