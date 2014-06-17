!!!!    /* $RCSfile: test02.c0,v $ $Revision: 941021.1 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    int main( ){
!!!!       puts( "Hello, World.\n" );
!!!!       putc( '\n' );
!!!!       puti( 2147483647 );
!!!!       putc( '\n' );
!!!!       exit( 0 );
!!!!       return 0;
!!!!    }
!!!!    
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 8
LC0:
	.ascii "Hello, World.\12\0"
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-104,%sp
	!#PROLOGUE# 1
	call ___main,0
	nop
	sethi %hi(LC0),%o0
	call _puts,0
	or %o0,%lo(LC0),%o0
	call _putc,0
	mov 10,%o0
	sethi %hi(2147483647),%o0
	call _puti,0
	or %o0,%lo(2147483647),%o0
	call _putc,0
	mov 10,%o0
	call _exit,0
	mov 0,%o0
	ret
	restore
