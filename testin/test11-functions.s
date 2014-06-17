!!!!    /* $RCSfile: test05.c0,v $ $Revision: 941123.1 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    int overloaded; 
!!!!    
!!!!    void func_no_params( ){
!!!!       int overloaded;
!!!!       overloaded = 3;
!!!!       puti( overloaded );
!!!!       puts( " no_params done\n" );
!!!!    }
!!!!    
!!!!    int func_one_param( int only ){
!!!!       int overloaded;
!!!!       overloaded = only + 6;
!!!!       puts( " one_param done\n" );
!!!!       return 314159;
!!!!    }
!!!!    
!!!!    char func_two_params( int first, int second ){
!!!!       puti( first + second );
!!!!       puts( " two_params done\n" );
!!!!       return 'c';
!!!!    }
!!!!    
!!!!    void func_four_params( int address[], int address2[],
!!!!          int pi_31459, char a____b____cC__Dd ){
!!!!    }
!!!!    
!!!!    void star_crazy( char ***starstarstar[] ){
!!!!    }
!!!!    
!!!!    int main( ){
!!!!       int f; int c; char ***hisss[20];
!!!!       func_no_params( );
!!!!       f = func_one_param( 6 );
!!!!       c = func_two_params( 4, 'r' );
!!!!       func_four_params( &f, &c, f, c );
!!!!       star_crazy( hisss );
!!!!       return f + c;
!!!!    }
!!!!    
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 8
LC0:
	.ascii " no_params done\12\0"
	.align 4
	.global _func_no_params
	.proc	020
_func_no_params:
	!#PROLOGUE# 0
	save %sp,-104,%sp
	!#PROLOGUE# 1
	call _puti,0
	mov 3,%o0
	sethi %hi(LC0),%o0
	call _puts,0
	or %o0,%lo(LC0),%o0
	ret
	restore
	.align 8
LC1:
	.ascii " one_param done\12\0"
	.align 4
	.global _func_one_param
	.proc	04
_func_one_param:
	!#PROLOGUE# 0
	save %sp,-104,%sp
	!#PROLOGUE# 1
	sethi %hi(LC1),%o0
	call _puts,0
	or %o0,%lo(LC1),%o0
	sethi %hi(314159),%i0
	or %i0,%lo(314159),%i0
	ret
	restore
	.align 8
LC2:
	.ascii " two_params done\12\0"
	.align 4
	.global _func_two_params
	.proc	04
_func_two_params:
	!#PROLOGUE# 0
	save %sp,-104,%sp
	!#PROLOGUE# 1
	call _puti,0
	add %i0,%i1,%o0
	sethi %hi(LC2),%o0
	call _puts,0
	or %o0,%lo(LC2),%o0
	ret
	restore %g0,99,%o0
	.align 4
	.global _func_four_params
	.proc	020
_func_four_params:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	retl
	nop
	.align 4
	.global _star_crazy
	.proc	020
_star_crazy:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	retl
	nop
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-192,%sp
	!#PROLOGUE# 1
	call ___main,0
	nop
	call _func_no_params,0
	nop
	call _func_one_param,0
	mov 6,%o0
	st %o0,[%fp-92]
	mov 4,%o0
	call _func_two_params,0
	mov 114,%o1
	sll %o0,24,%o3
	sra %o3,24,%o3
	st %o3,[%fp-96]
	add %fp,-92,%o0
	ld [%fp-92],%o2
	call _func_four_params,0
	add %fp,-96,%o1
	call _star_crazy,0
	add %fp,-88,%o0
	ld [%fp-92],%o0
	ld [%fp-96],%i0
	ret
	restore %o0,%i0,%o0
	.common _overloaded,4,"bss"
