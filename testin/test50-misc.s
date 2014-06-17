!!!!    
!!!!    /* #define MAX_ARRAY_LEN   25 */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    int int_array[ 25 ];
!!!!    
!!!!    int flip_high_bit (int number, int upperbound){
!!!!       int half_val;
!!!!    
!!!!       half_val = upperbound / 2;
!!!!    
!!!!       if (number < half_val){
!!!!          /* high bit is zero, can flip by adding
!!!!           * half_val
!!!!           */
!!!!          return (number + half_val);
!!!!       }else{
!!!!          /* high  bit is one, can zero by 
!!!!           * subtracting half_val
!!!!           */
!!!!          return (number - half_val);
!!!!       }
!!!!    }
!!!!    
!!!!    int main (){
!!!!       int i;
!!!!    
!!!!       i =  0;
!!!!    
!!!!       /*  apply flip to all array elements */
!!!!       while (i < 25 /* MAX_ARRAY_LEN */){
!!!!          int_array[ i ] = flip_high_bit (int_array[ i ], 256);
!!!!          i = i + 1;
!!!!       }
!!!!    
!!!!       puts ("We're done\n");
!!!!       return 0;
!!!!    }
!!!!    
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.global _flip_high_bit
	.proc	04
_flip_high_bit:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	srl %o1,31,%g2
	add %g2,%o1,%g2
	sra %g2,1,%g2
	cmp %o0,%g2
	bl,a L2
	add %o0,%g2,%o0
	sub %o0,%g2,%o0
L2:
	retl
	nop
	.align 8
LC0:
	.ascii "We're done\12\0"
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-104,%sp
	!#PROLOGUE# 1
	call ___main,0
	mov 0,%l0
	sethi %hi(_int_array),%o0
	or %o0,%lo(_int_array),%i0
L8:
	ld [%i0],%o0
	add %l0,1,%l0
	call _flip_high_bit,0
	mov 256,%o1
	st %o0,[%i0]
	cmp %l0,24
	ble L8
	add %i0,4,%i0
	sethi %hi(LC0),%o0
	call _puts,0
	or %o0,%lo(LC0),%o0
	ret
	restore %g0,0,%o0
	.common _int_array,100,"bss"
