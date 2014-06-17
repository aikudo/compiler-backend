!!!!    /* $RCSfile: test02.ico,v $ $Revision: 353.1 $ */
!!!!    #include "c0-lib.h"
!!!!    
!!!!    int main( )
!!!!    {
!!!!       puts( "Hello, World.\n" );
!!!!       putc( '\n' );
!!!!       puti( 2147483647 );
!!!!       putc( '\n' );
!!!!       exit( 0 );
!!!!       return 0;
!!!!    }
!!!!    
	.file	"test02.c"
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

	.section	".rodata"
	.align 8
.LLC0:
	.asciz	"Hello, World.\n"
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	!#PROLOGUE# 0
	save	%sp, -112, %sp
	!#PROLOGUE# 1
	sethi	%hi(.LLC0), %o0
	call	puts, 0
	or	%o0, %lo(.LLC0), %o0
	call	putc, 0
	mov	10, %o0
	sethi	%hi(2147482624), %o0
	call	puti, 0
	or	%o0, 1023, %o0
	call	putc, 0
	mov	10, %o0
	call	exit, 0
	mov	0, %o0
	nop
	.size	main, .-main
	.ident	"GCC: (GNU) 3.3.2"
