!!!!    /* $RCSfile: test07.c0,v $ $Revision: 941021.1 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    int main( ){
!!!!    
!!!!       int i2;
!!!!       int i3;
!!!!       int ia;
!!!!       int is;
!!!!       int im;
!!!!       int id;
!!!!       int ir;
!!!!       int ip;
!!!!       int in;
!!!!    
!!!!       char c2;
!!!!       char c3;
!!!!       char ca;
!!!!       char cs;
!!!!       char cm;
!!!!       char cd;
!!!!       char cr;
!!!!       char cp;
!!!!       char cn;
!!!!    
!!!!       i2 = 19;
!!!!       i3 = 4;
!!!!       c2 = 'e';
!!!!       c3 = ' ';
!!!!    
!!!!       puti( ia = i2 + i3 );
!!!!       puti( is = i2 - i3 );
!!!!       puti( im = i2 * i3 );
!!!!       puti( id = i2 / i3 );
!!!!       puti( ir = i2 % i3 );
!!!!       puti( ip = + i3 );
!!!!       puti( in = - i3 );
!!!!    
!!!!       puti( ca = c2 + c3 );
!!!!       puti( cs = c2 - c3 );
!!!!       puti( cm = c2 * c3 );
!!!!       puti( cd = c2 / c3 );
!!!!       puti( cr = c2 % c3 );
!!!!       puti( cp = + c3 );
!!!!       puti( cn = - c3 );
!!!!    
!!!!       return 0;
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
	mov 0,%i0
	call _puti,0
	mov 23,%o0
	call _puti,0
	mov 15,%o0
	call _puti,0
	mov 76,%o0
	call _puti,0
	mov 4,%o0
	call _puti,0
	mov 3,%o0
	call _puti,0
	mov 4,%o0
	call _puti,0
	mov -4,%o0
	call _puti,0
	mov -123,%o0
	call _puti,0
	mov 69,%o0
	call _puti,0
	mov -96,%o0
	call _puti,0
	mov 3,%o0
	call _puti,0
	mov 5,%o0
	call _puti,0
	mov 32,%o0
	call _puti,0
	mov -32,%o0
	ret
	restore
