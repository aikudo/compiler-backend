!!!!    /* $RCSfile: test25-constfold.c0,v $$Revision: 970304.103604 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    /*
!!!!    * Does nothing much except for testing constant folding
!!!!    * and constant propagation.
!!!!    */
!!!!    
!!!!    int pi(){
!!!!       return
!!!!       ((((( 3 ) * 10 + 1 ) * 10 + 4 ) * 10 + 1 ) * 10 + 5 ) * 10 + 9;
!!!!    };
!!!!    
!!!!    int main( int argc, char **argv ){
!!!!       int yes; int zero; int NULL;
!!!!       yes = 3; zero = 0; NULL = 0;
!!!!       /* Is the dead variable NULL eliminated? */
!!!!       /* Are the dead params argc and argv eliminated? */
!!!!       puts( "pi=" );
!!!!       puti( pi() );
!!!!       putc( '\n' );
!!!!       if( 1!=0 ) puts( "one is true\n" );
!!!!       if( 0!=0 ) puts( "zero is true\n" );
!!!!       if( 1!=0 ){
!!!!          puts( "if then else is true\n" );
!!!!       }else{
!!!!          puts( "if then else is false\n" );
!!!!       };
!!!!       if( yes != 0 ) puts( "This is harder to optimize.\n" );
!!!!       if( zero != 0 ) puts( "This statement should never be printed.\n" );
!!!!       return zero; /* do you load zero here or const 0? */
!!!!    };
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.global _pi
	.proc	04
_pi:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	sethi %hi(314159),%o0
	retl
	or %o0,%lo(314159),%o0
	.align 8
LC0:
	.ascii "pi=\0"
	.align 8
LC1:
	.ascii "one is true\12\0"
	.align 8
LC2:
	.ascii "zero is true\12\0"
	.align 8
LC3:
	.ascii "if then else is true\12\0"
	.align 8
LC4:
	.ascii "if then else is false\12\0"
	.align 8
LC5:
	.ascii "This is harder to optimize.\12\0"
	.align 8
LC6:
	.ascii "This statement should never be printed.\12\0"
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-104,%sp
	!#PROLOGUE# 1
	call ___main,0
	mov 0,%i0
	sethi %hi(LC0),%o0
	call _puts,0
	or %o0,%lo(LC0),%o0
	call _pi,0
	nop
	call _puti,0
	nop
	call _putc,0
	mov 10,%o0
	sethi %hi(LC1),%o0
	call _puts,0
	or %o0,%lo(LC1),%o0
	sethi %hi(LC3),%o0
	call _puts,0
	or %o0,%lo(LC3),%o0
	sethi %hi(LC5),%o0
	call _puts,0
	or %o0,%lo(LC5),%o0
	ret
	restore
