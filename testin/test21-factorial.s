!!!!    /* $RCSfile: test21-factorial.ico,v $ $Revision: 353.1 $ */
!!!!    #include "c0-lib.h"
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
!!!!    int main( ){
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
	.file	"test21-factorial.c"
! GNU C version 3.3.2 (sparc-sun-solaris2.8)
!	compiled by GNU C version 3.3.2.
! GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
! options passed:  -D__GNUC__=3 -D__GNUC_MINOR__=3 -D__GNUC_PATCHLEVEL__=2
! -Dsparc -D__sparc__ -D__sparc -D__sparcv8 -D__GCC_NEW_VARARGS__
! -Acpu=sparc -Amachine=sparc -mcpu=v8 -mv8 -auxbase -O2 -fverbose-asm
! options enabled:  -fdefer-pop -fomit-frame-pointer
! -foptimize-sibling-calls -fcse-follow-jumps -fcse-skip-blocks
! -fexpensive-optimizations -fthread-jumps -fstrength-reduce -fpeephole
! -fforce-mem -ffunction-cse -fkeep-static-consts -fcaller-saves
! -fpcc-struct-return -fdelayed-branch -fgcse -fgcse-lm -fgcse-sm
! -floop-optimize -fcrossjumping -fif-conversion -fif-conversion2
! -frerun-cse-after-loop -frerun-loop-opt -fdelete-null-pointer-checks
! -fschedule-insns -fschedule-insns2 -fsched-interblock -fsched-spec
! -fbranch-count-reg -freorder-blocks -freorder-functions -fcprop-registers
! -fcommon -fverbose-asm -fgnu-linker -fregmove -foptimize-register-move
! -fargument-alias -fstrict-aliasing -fmerge-constants
! -fzero-initialized-in-bss -fident -fpeephole2 -fguess-branch-probability
! -fmath-errno -ftrapping-math -mcpu=v8

	.section	".text"
	.align 4
	.global mul_int
	.type	mul_int, #function
	.proc	020
mul_int:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	ld	[%o0], %g1	! * number
	smul	%g1, %o1, %g1	!  int_num
	retl
	st	%g1, [%o0]	! * number
	.size	mul_int, .-mul_int
	.section	".rodata"
	.align 8
.LLC0:
	.asciz	" = "
	.align 8
.LLC1:
	.asciz	"!\n"
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	!#PROLOGUE# 0
	save	%sp, -120, %sp
	!#PROLOGUE# 1
	mov	1, %g1
	sethi	%hi(global_array), %o5
	st	%g1, [%fp-20]
	or	%o5, %lo(global_array), %l4
	mov	0, %i0	!  counter
	sethi	%hi(global_int), %l0
	sethi	%hi(.LLC0), %l2
	sethi	%hi(.LLC1), %l1
	mov	1, %l3
	mov	%i0, %o1	!  counter
.LL12:
	cmp	%i0, 0	!  counter
	bne	.LL6
	add	%fp, -20, %o0
	ld	[%l0+%lo(global_int)], %o5	!  global_int
	add	%o5, %o5, %g1
	add	%g1, %o5, %g1
	add	%g1, -1, %g1
	smul	%g1, 623, %g1
	st	%g1, [%l0+%lo(global_int)]	!  global_int
	st	%l3, [%fp-20]
.LL7:
	call	puti, 0
	ld	[%fp-20], %o0
	call	puts, 0
	or	%l2, %lo(.LLC0), %o0
	call	puti, 0
	mov	%i0, %o0	!  counter
	call	puts, 0
	or	%l1, %lo(.LLC1), %o0
	add	%i0, 1, %i0	!  counter,  counter
	cmp	%i0, 31	!  counter
	ble	.LL12
	mov	%i0, %o1	!  counter
	b,a	.LL11
.LL6:
	call	mul_int, 0
	 nop
	ld	[%fp-20], %o5
	sll	%i0, 2, %g1	!  counter
	st	%o5, [%l4+%g1]	!  global_array
	b	.LL7
	st	%o5, [%l0+%lo(global_int)]	!  global_int
.LL11:
	ret
	restore %g0, 0, %o0
	.size	main, .-main
	.common	global_int,4,4
	.common	global_array,396,4
	.common	many_times,4,4
	.ident	"GCC: (GNU) 3.3.2"
