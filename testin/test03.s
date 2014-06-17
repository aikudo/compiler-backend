!!!!    /* $RCSfile: test03.c0,v $ $Revision: 941108.1 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    int global_int;
!!!!    int global_array[ 99 ];
!!!!    int many_times;
!!!!    
!!!!    void mul_int( int *number, int int_num )
!!!!    {
!!!!       int many_times;
!!!!       *number = *number * int_num;
!!!!    }
!!!!    
!!!!    int main( )
!!!!    {
!!!!       int counter;
!!!!       int factorial;
!!!!       int many_times;
!!!!    
!!!!       counter = 0;
!!!!       factorial = 1;
!!!!       while( counter <= 31 ){
!!!!          if( counter == 0 ){
!!!!             factorial = 1;
!!!!             global_int = global_int * 3;
!!!!             global_int = ( global_int - factorial ) * 623;
!!!!          }else{
!!!!             mul_int( &factorial, counter );
!!!!             global_array[ counter ] = factorial;
!!!!             global_int = factorial;
!!!!          };
!!!!             
!!!!          puti( factorial );
!!!!          puts( " = " );
!!!!          puti( counter );
!!!!          puts( "!\n" );
!!!!          counter = counter + 1;
!!!!       };
!!!!       return 0;
!!!!    }
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.global _mul_int
	.proc	020
_mul_int:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	ld [%o0],%g2
	smul %g2,%o1,%g2
	retl
	st %g2,[%o0]
	.align 8
LC0:
	.ascii " = \0"
	.align 8
LC1:
	.ascii "!\12\0"
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	call ___main,0
	mov 0,%i0
	mov 1,%o0
	st %o0,[%fp-12]
	mov 1,%l5
	sethi %hi(_global_int),%l1
	sethi %hi(_global_array),%o0
	or %o0,%lo(_global_array),%l4
	sethi %hi(LC0),%l3
	sethi %hi(LC1),%l2
	mov 0,%l0
	cmp %i0,0
L10:
	bne,a L6
	add %fp,-12,%o0
	ld [%l1+%lo(_global_int)],%o1
	st %l5,[%fp-12]
	sll %o1,1,%o0
	add %o0,%o1,%o0
	add %o0,-1,%o0
	b L9
	smul %o0,623,%o0
L6:
	call _mul_int,0
	mov %i0,%o1
	ld [%fp-12],%o0
	st %o0,[%l0+%l4]
L9:
	st %o0,[%l1+%lo(_global_int)]
	ld [%fp-12],%o0
	call _puti,0
	add %l0,4,%l0
	call _puts,0
	or %l3,%lo(LC0),%o0
	call _puti,0
	mov %i0,%o0
	call _puts,0
	or %l2,%lo(LC1),%o0
	add %i0,1,%i0
	cmp %i0,31
	ble L10
	cmp %i0,0
	ret
	restore %g0,0,%o0
	.common _global_int,4,"bss"
	.common _global_array,396,"bss"
	.common _many_times,4,"bss"
