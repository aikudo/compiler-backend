!!!!    
!!!!    int inner_product (int len,
!!!!             int in_vector1[],
!!!!             int in_vector2[])
!!!!    {
!!!!       int i;
!!!!       int sum;
!!!!    
!!!!       i = 0;
!!!!       sum = 0;
!!!!    
!!!!       while (i < len)
!!!!       {
!!!!          sum = sum + in_vector1[ i ] * in_vector2[ i ];
!!!!          i = i + 1;
!!!!       }
!!!!    
!!!!       return sum;
!!!!    }
!!!!    
!!!!    void time_killer (int outer, int inner)
!!!!    {
!!!!       int i;
!!!!       int j;
!!!!       int vec1[100];
!!!!       int vec2[100];
!!!!    
!!!!       i = 0;
!!!!       j = 0;
!!!!    
!!!!       while (i < outer)
!!!!       {
!!!!          while (j < inner)
!!!!          {
!!!!             j = j + 1;
!!!!          }
!!!!       }
!!!!    }
!!!!    
!!!!    void swap (int *int_ptr1, int *int_ptr2)
!!!!    {
!!!!       int temp;
!!!!    
!!!!       temp = *int_ptr1;
!!!!       *int_ptr1 = *int_ptr2;
!!!!       *int_ptr2 = temp;
!!!!    }
!!!!    
!!!!    
!!!!    int main (int argc, char **argv)
!!!!    {
!!!!       char digit;
!!!!       int len;
!!!!       int v1[10];
!!!!       int v2[10];
!!!!       int ret_val;
!!!!       int *int_ptr;
!!!!    
!!!!       if (argc == 3)
!!!!       {
!!!!          digit = **(argv + 1);
!!!!    
!!!!          len = digit - '0';
!!!!    
!!!!          if (len >= 0)
!!!!             if (len <= 9)
!!!!                ret_val = inner_product (len, v1, v2);
!!!!             else
!!!!             {
!!!!             }
!!!!          else
!!!!          {
!!!!          }
!!!!       }
!!!!       else
!!!!       {
!!!!          swap (&(v1[0]), &(v2[0]));
!!!!       }
!!!!       return 0;
!!!!    }
!!!!    
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.global _inner_product
	.proc	04
_inner_product:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	mov %o0,%o5
	mov 0,%o0
	cmp %o0,%o5
	bge L3
	mov 0,%o4
	mov 0,%o3
L4:
	ld [%o3+%o1],%g2
	add %o4,1,%o4
	ld [%o3+%o2],%g3
	cmp %o4,%o5
	smul %g2,%g3,%g2
	add %o0,%g2,%o0
	bl L4
	add %o3,4,%o3
L3:
	retl
	nop
	.align 4
	.global _time_killer
	.proc	020
_time_killer:
	!#PROLOGUE# 0
	add %sp,-904,%sp
	!#PROLOGUE# 1
	mov 0,%g3
	cmp %g3,%o0
	bge L8
	mov 0,%g2
	b L16
	cmp %g2,%o1
L12:
	cmp %g2,%o1
L16:
	bl,a L12
	add %g2,1,%g2
	cmp %g3,%o0
	bl L16
	cmp %g2,%o1
L8:
	retl
	sub %sp,-904,%sp
	.align 4
	.global _swap
	.proc	020
_swap:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	ld [%o1],%g2
	ld [%o0],%g3
	st %g2,[%o0]
	retl
	st %g3,[%o1]
	.align 4
	.global _main
	.proc	04
_main:
	!#PROLOGUE# 0
	save %sp,-184,%sp
	!#PROLOGUE# 1
	call ___main,0
	nop
	cmp %i0,3
	bne L19
	add %fp,-48,%o0
	ld [%i1+4],%o0
	ldsb [%o0],%o0
	addcc %o0,-48,%o0
	bneg L24
	cmp %o0,9
	bg L24
	add %fp,-48,%o1
	call _inner_product,0
	add %fp,-88,%o2
	b,a L24
L19:
	call _swap,0
	add %fp,-88,%o1
L24:
	ret
	restore %g0,0,%o0
