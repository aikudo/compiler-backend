!!!!    # $RCSfile: test10.c0,v $$Revision: 941123.1 $
!!!!    #include "c0_lib.h"
!!!!    
!!!!    int main( int argc, char **argv ){
!!!!       int count;
!!!!       count = 0;
!!!!       while( count < argc ){
!!!!          puts( argv[ count ] );
!!!!          putc( '\n' );
!!!!          count = count + 1;
!!!!       };
!!!!       return count;
!!!!    }
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-104,%sp
	!#PROLOGUE# 1
	call ___main,0
	mov %i0,%l1
	mov 0,%i0
	cmp %i0,%l1
	bge L3
	mov 0,%l0
L4:
	ld [%l0+%i1],%o0
	call _puts,0
	add %i0,1,%i0
	call _putc,0
	mov 10,%o0
	cmp %i0,%l1
	bl L4
	add %l0,4,%l0
L3:
	ret
	restore
