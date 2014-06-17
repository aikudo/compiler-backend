!!!!    /* $RCSfile: test06.c0,v $ $Revision: 941021.1 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    void pad( int n )
!!!!    {
!!!!       /* pad numbers out to align into columns */
!!!!       int width;
!!!!       width = 5;
!!!!       while( width > 0 ){
!!!!          width = width - 1;
!!!!          n = n / 10;
!!!!          if( n == 0 ) putc( ' ' );
!!!!       };
!!!!    }
!!!!    
!!!!    int main( )
!!!!    {
!!!!       /* print some Fibonacci numbers */
!!!!       int fibonacci[ 20 ];
!!!!       int n;
!!!!       fibonacci[0] = 0;
!!!!       fibonacci[1] = 1;
!!!!       n = 2;
!!!!       while( n < 20 ){
!!!!          fibonacci[n] = fibonacci[n-1] + fibonacci[n-2];
!!!!          n = n + 1;
!!!!       };
!!!!       n = 0;
!!!!       puts( "Numeri di figlio Bonacci\n" );
!!!!       while( n < 20 ){
!!!!          pad( n );
!!!!          puti( n );
!!!!          pad( fibonacci[n] );
!!!!          puti( fibonacci[n] );
!!!!          puts( "\n" );
!!!!          n = n + 1;
!!!!       };
!!!!    }
!!!!    
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.global _pad
	.proc	020
_pad:
	!#PROLOGUE# 0
	save %sp,-104,%sp
	!#PROLOGUE# 1
	mov 5,%l0
	sethi %hi(1717986919),%o0
	or %o0,%lo(1717986919),%l1
L4:
	smul %i0,%l1,%g0
	rd %y,%o0
	sra %o0,2,%o0
	sra %i0,31,%o1
	subcc %o0,%o1,%i0
	bne L2
	add %l0,-1,%l0
	call _putc,0
	mov 32,%o0
L2:
	cmp %l0,0
	bg L4
	nop
	ret
	restore
	.align 8
LC0:
	.ascii "Numeri di figlio Bonacci\12\0"
	.align 8
LC1:
	.ascii "\12\0"
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-184,%sp
	!#PROLOGUE# 1
	call ___main,0
	mov 2,%l0
	st %g0,[%fp-88]
	mov 1,%o0
	st %o0,[%fp-84]
	mov %fp,%o2
L10:
	ld [%o2-84],%o0
	add %l0,1,%l0
	ld [%o2-88],%o1
	cmp %l0,19
	add %o0,%o1,%o0
	st %o0,[%o2-80]
	ble L10
	add %o2,4,%o2
	mov 0,%l0
	sethi %hi(LC0),%o0
	call _puts,0
	or %o0,%lo(LC0),%o0
	sethi %hi(LC1),%l2
	add %fp,-8,%l1
L14:
	call _pad,0
	mov %l0,%o0
	call _puti,0
	mov %l0,%o0
	call _pad,0
	ld [%l1-80],%o0
	ld [%l1-80],%o0
	call _puti,0
	add %l0,1,%l0
	call _puts,0
	or %l2,%lo(LC1),%o0
	cmp %l0,19
	ble L14
	add %l1,4,%l1
	ret
	restore
