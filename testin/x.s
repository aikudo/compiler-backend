	.file	"x.c"
gcc2_compiled.:
.section	".text"
	.align 4
	.global main
	.type	 main,#function
	.proc	04
main:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov 0,%l0
.LL5:
	call f,0
	add %l0,1,%l0
	cmp %l0,5
	ble .LL5
	nop
	ret
	restore
.LLfe1:
	.size	 main,.LLfe1-main
	.ident	"GCC: (GNU) 2.8.1"
