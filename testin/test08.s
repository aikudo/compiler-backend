!!!!    /* $RCSfile: test08.c0,v $ $Revision: 941021.1 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    int main( )
!!!!    {
!!!!       int i1; int i2; int i3;
!!!!       char c1; char c2; char c3;
!!!!    
!!!!       i1 = 6; i2 = 8; i3 = 0;
!!!!       c1 = 'a'; c2 = 'b'; c3 = 0;
!!!!    
!!!!       if( i1 == i2 ){ i3 = i3 * 10 + 1; }else{ i3 = i3 * 10 + 0; };
!!!!       if( i1 != i2 ){ i3 = i3 * 10 + 1; }else{ i3 = i3 * 10 + 0; };
!!!!       if( i1 <  i2 ){ i3 = i3 * 10 + 1; }else{ i3 = i3 * 10 + 0; };
!!!!       if( i1 >= i2 ){ i3 = i3 * 10 + 1; }else{ i3 = i3 * 10 + 0; };
!!!!       if( i1 >  i2 ){ i3 = i3 * 10 + 1; }else{ i3 = i3 * 10 + 0; };
!!!!       if( i1 <= i2 ){ i3 = i3 * 10 + 1; }else{ i3 = i3 * 10 + 0; };
!!!!       puti( i3 );
!!!!       putc( '\n' );
!!!!    
!!!!       i3 = 0;
!!!!       if( c1 == c2 ){ i3 = i3 * 10 + '1'; }else{ i3 = i3 * 10 + '0'; };
!!!!       if( c1 != c2 ){ i3 = i3 * 10 + '1'; }else{ i3 = i3 * 10 + '0'; };
!!!!       if( c1 <  c2 ){ i3 = i3 * 10 + '1'; }else{ i3 = i3 * 10 + '0'; };
!!!!       if( c1 >= c2 ){ i3 = i3 * 10 + '1'; }else{ i3 = i3 * 10 + '0'; };
!!!!       if( c1 >  c2 ){ i3 = i3 * 10 + '1'; }else{ i3 = i3 * 10 + '0'; };
!!!!       if( c1 <= c2 ){ i3 = i3 * 10 + '1'; }else{ i3 = i3 * 10 + '0'; };
!!!!       puti( i3 );
!!!!       putc( '\n' );
!!!!    
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
	mov 97,%l1
	mov 11,%o1
	mov 6,%o3
	mov 8,%o2
	cmp %o3,%o2
	bl L8
	mov 98,%l0
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o0
	b L26
	add %o0,1,%o1
L8:
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o1
	cmp %o3,%o2
L26:
	ble L10
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o0
	b L11
	add %o0,1,%o1
L10:
	add %o0,%o1,%o0
	sll %o0,1,%o1
L11:
	cmp %o3,%o2
	bg L12
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o0
	b L13
	add %o0,1,%o1
L12:
	add %o0,%o1,%o0
	sll %o0,1,%o1
L13:
	call _puti,0
	mov %o1,%o0
	call _putc,0
	mov 10,%o0
	mov %l1,%o2
	mov %l0,%o0
	cmp %o2,%o0
	bne L27
	mov 48,%o1
	mov 49,%o1
	cmp %o2,%o0
L27:
	be L16
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o0
	b L17
	add %o0,49,%o1
L16:
	add %o0,%o1,%o0
	sll %o0,1,%o0
	add %o0,48,%o1
L17:
	cmp %l1,%l0
	bge L18
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o0
	b L28
	add %o0,49,%o1
L18:
	add %o0,%o1,%o0
	sll %o0,1,%o0
	add %o0,48,%o1
	cmp %l1,%l0
L28:
	bl L20
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o0
	b L21
	add %o0,49,%o1
L20:
	add %o0,%o1,%o0
	sll %o0,1,%o0
	add %o0,48,%o1
L21:
	cmp %l1,%l0
	ble L22
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o0
	b L29
	add %o0,49,%o1
L22:
	add %o0,%o1,%o0
	sll %o0,1,%o0
	add %o0,48,%o1
	cmp %l1,%l0
L29:
	bg L24
	sll %o1,2,%o0
	add %o0,%o1,%o0
	sll %o0,1,%o0
	b L25
	add %o0,49,%o1
L24:
	add %o0,%o1,%o0
	sll %o0,1,%o0
	add %o0,48,%o1
L25:
	call _puti,0
	mov %o1,%o0
	call _putc,0
	mov 10,%o0
	ret
	restore
