!!!!    
!!!!    /* This one has a blatant error */
!!!!    #include "c0_lib.h"
!!!!    int global_array[ 18 ];
!!!!    int i;
!!!!    
!!!!    int main ()
!!!!    {
!!!!       int redef;
!!!!       int i;
!!!!       int *int_ptr;
!!!!       int redef;
!!!!    
!!!!       int_ptr = &i;
!!!!       i = int_ptr * int_ptr;
!!!!       i = int_ptr;
!!!!       i = undeclared_variable;
!!!!    
!!!!       global_array[ 1 ] = 23;
!!!!       int_ptr = global_array;
!!!!       puti (int_ptr[ 1 ]);
!!!!       return 0;
!!!!    }
!!!!    
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	call ___main,0
	mov 0,%i0
	add %fp,-12,%o0
	st %o0,[%fp-12]
	sethi %hi(_global_array+4),%o1
	mov 23,%o0
	call _puti,0
	st %o0,[%o1+%lo(_global_array+4)]
	ret
	restore
	.common _global_array,72,"bss"
	.common _i,4,"bss"
