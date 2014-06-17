!!!!    /* $RCSfile: test24-sort.c0,v $$Revision: 970130.140219 $ */
!!!!    #include "c0_lib.h"
!!!!    
!!!!    void selection_sort( int array[ ], int dimension ){
!!!!       int outer; int inner; int maxpos; int swap;
!!!!       outer = dimension - 1;
!!!!       while( outer > 0 ){
!!!!          maxpos = 1;
!!!!          inner = 0;
!!!!          while( inner <= outer ){
!!!!             if( array[ inner ] > array[ maxpos ] ){
!!!!                maxpos = inner;
!!!!             };
!!!!             inner = inner + 1;
!!!!          };
!!!!          if( maxpos != outer ){
!!!!             swap = array[ outer ];
!!!!             array[ outer ] = array[ maxpos ];
!!!!             array[ maxpos ] = swap;
!!!!          };
!!!!          outer = outer - 1;
!!!!       };
!!!!    };
!!!!    
!!!!    int main( ){
!!!!       int array[ 25 ];
!!!!       int count;
!!!!       int num;
!!!!       int done;
!!!!       int index;
!!!!       count = 0;
!!!!       done = 0;
!!!!       while( done == 0 ){
!!!!          if( count >= 25 ){
!!!!             done = 1;
!!!!          }else if( geti( &num ) == 0 ){
!!!!             done = 1;
!!!!          }else{
!!!!             array[ count ] = num;
!!!!             count = count + 1;
!!!!          };
!!!!       };
!!!!       selection_sort( array, count );
!!!!       index = 0;
!!!!       while( index < count ){
!!!!          puti( index );
!!!!          puts( ": " );
!!!!          puti( array[ index ] );
!!!!          putc( '\n' );
!!!!          index = index + 1;
!!!!       };
!!!!       return 0;
!!!!    }
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.global _selection_sort
	.proc	020
_selection_sort:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	add %o1,-1,%o1
	cmp %o1,0
	ble L3
	mov %o0,%o4
	sll %o1,2,%g2
	add %g2,%o4,%o5
L4:
	mov 0,%o0
	cmp %o0,%o1
	bg L6
	mov 1,%o3
	mov 0,%o2
L7:
	ld [%o2+%o4],%g2
	sll %o3,2,%g3
	ld [%o4+%g3],%g3
	cmp %g2,%g3
	bg,a L8
	mov %o0,%o3
L8:
	add %o0,1,%o0
	cmp %o0,%o1
	ble L7
	add %o2,4,%o2
L6:
	cmp %o3,%o1
	be L10
	sll %o3,2,%g2
	ld [%o4+%g2],%g3
	ld [%o5],%o0
	st %g3,[%o5]
	st %o0,[%o4+%g2]
L10:
	add %o1,-1,%o1
	cmp %o1,0
	bg L4
	add %o5,-4,%o5
L3:
	retl
	nop
	.align 8
LC0:
	.ascii ": \0"
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-216,%sp
	!#PROLOGUE# 1
	call ___main,0
	mov 0,%l1
	mov 0,%i0
	add %fp,-8,%l0
	cmp %l1,24
L26:
	bg,a L13
	mov 1,%i0
	call _geti,0
	add %fp,-116,%o0
	cmp %o0,0
	bne L18
	ld [%fp-116],%o0
	b L13
	mov 1,%i0
L18:
	add %l1,1,%l1
	st %o0,[%l0-104]
	add %l0,4,%l0
L13:
	cmp %i0,0
	be L26
	cmp %l1,24
	add %fp,-112,%o0
	call _selection_sort,0
	mov %l1,%o1
	mov 0,%i0
	cmp %i0,%l1
	bge L22
	sethi %hi(LC0),%l2
	add %fp,-8,%l0
L23:
	call _puti,0
	mov %i0,%o0
	call _puts,0
	or %l2,%lo(LC0),%o0
	ld [%l0-104],%o0
	call _puti,0
	add %i0,1,%i0
	call _putc,0
	mov 10,%o0
	cmp %i0,%l1
	bl L23
	add %l0,4,%l0
L22:
	ret
	restore %g0,0,%o0
