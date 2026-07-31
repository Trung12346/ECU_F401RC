.syntax unified
.thumb
	
.global pid
.type pid, %function

pid:
	VMOV      S0, R1
	VMOV      S1, R2
	VLDR.32   S2, [R0]
	VLDR.32   S3, [R0, #4]
	VLDR.32   S4, [R0, #8]
	VLDR.32   S5, [R0, #12]
	VLDR.32   S6, [R0, #16]
	VLDR.32   S7, [R0, #20]
	VLDR.32   S8, [R0, #24]
	VLDR.32   S13, [R0, #28]
	
	VSUB.F32  S9, S7, S0
	VMLA.F32  S5, S9, S1
	
	VCMP.F32  S5, S8
	VMRS      APSR_nzcv, FPSCR
	BGT       integral_overflow
	
	VCMP.F32  S5, S13
	VMRS      APSR_nzcv, FPSCR
	BLT       integral_underflow
	
	B         con_0
	
integral_overflow:
	VMOV      S5, S8
	B         con_0
	
integral_underflow:
	VMOV      S5, S13
	B         con_0
	
con_0:
	VSTR.32   S5, [R0, #12]
	
	VSUB.F32  S11, S9, S6
	VDIV.F32  S11, S11, S1
	
	VSTR.32   S9, [R0, #16]
	
	VMOV      S12, #0.0
	VMLA      S12, S9, S2
	VMLA      S12, S5, S3
	VMLA      S12, S11, S4
	
	VMOV      S14, #1.0
	VCMP.F32  S12, S14
	VMRS      APSR_nzcv, FPSCR
	BGT       o_overflow
	
	VCMP.F32  S12, #0.0
	VMRS      APSR_nzcv, FPSCR
	BLT       o_underflow
	
	B         return

o_overflow:
	VMOV      S12, S14
	B         return

o_underflow:
	VMOV      S12, #0.0
	B         return
	
return:
	VMOV      S0, S12
	
	BX        LR
	