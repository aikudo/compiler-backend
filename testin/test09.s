!!!!    /* $RCSfile: test09.c0,v $ $Revision: 941021.1 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    int main( )
!!!!    {
!!!!       char c;
!!!!       int i;
!!!!       char s[500];
!!!!       int eof;
!!!!       int len;
!!!!    
!!!!       eof = getc( &c );
!!!!       eof = geti( &i );
!!!!       eof = gets( s );
!!!!    
!!!!       len = putc( c );
!!!!       len = puti( i );
!!!!       len = putp( s );
!!!!       len = puts( s );
!!!!    
!!!!       len = putc( 'c' );
!!!!       len = puti( 123 );
!!!!       len = putp( "\nHello, world!\n" );
!!!!       len = puts( "\nHello, world!\n" );
!!!!    };
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 8
LC0:
	.ascii "\12Hello, world!\12\0"
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-616,%sp
	!#PROLOGUE# 1
	call ___main,0
	nop
	call _getc,0
	add %fp,-513,%o0
	call _geti,0
	add %fp,-520,%o0
	add %fp,-512,%l0
	call _gets,0
	mov %l0,%o0
	call _putc,0
	ldsb [%fp-513],%o0
	call _puti,0
	ld [%fp-520],%o0
	call _putp,0
	mov %l0,%o0
	call _puts,0
	mov %l0,%o0
	call _putc,0
	mov 99,%o0
	call _puti,0
	mov 123,%o0
	sethi %hi(LC0),%l0
	or %l0,%lo(LC0),%l0
	call _putp,0
	mov %l0,%o0
	call _puts,0
	mov %l0,%o0
	ret
	restore
