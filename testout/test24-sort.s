.text                                                          
s39:  .asciz ":\040"                                            
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _selection_sort                                                    
                                                               
_selection_sort:                                                          
                                                               
      save  %sp, -112, %sp                                     
      st    %i0, [%fp+68]             ! store aliased valued   
BB0__selection_sort:                                                          
                                                               
      sub   %i1, 1, %l0               ! l(69): sub _dimension.1 1 t0DEF
      mov   %l0, %l1                  ! t0 -> _outer.1         
      st    %l1, [%fp-4]              ! _outer.1               
BB1__selection_sort:                                                          
                                                               
wh7008:                                                          
      cmp   %l1, 0                    ! l(71): jle _outer.1 0 br7008
      ble   BB6__selection_sort       ! BB6__selection_sort -> br7008
      nop                                                      
      mov   1, %l0                    ! 1 -> _maxpos.1         
      st    %l0, [%fp-12]             ! _maxpos.1              
      mov   0, %l1                    ! 0 -> _inner.1          
      st    %l1, [%fp-8]              ! _inner.1               
BB2__selection_sort:                                                          
                                                               
wh10011:                                                          
      cmp   %l1, %l0                                           
      ! l(75): jgt _inner.1 _outer.1 br10011                                                    
      bg    BB4__selection_sort       ! BB4__selection_sort -> br10011
      nop                                                      
      st    %l1, [%fp-8]              ! _inner.1               
      sll   %l1, 2, %g1               ! mul 4                  
      ld    [%i0+%g1], %l0            ! _array.1 + t6          
      st    %l1, [%fp-8]              ! _inner.1               
      st    %i0, [%fp+68]             ! _array.1               
      sll   %l2, 2, %g1               ! mul 4                  
      ld    [%i0+%g1], %l3            ! _array.1 + t7          
      cmp   %l2, %l4                  ! l(82): jle (*)t6 (*)t7 el11011
      ble   BB3__selection_sort       ! BB3__selection_sort -> el11011
      nop                                                      
      mov   %l1, %l2                  ! _inner.1 -> _maxpos.1  
      st    %l2, [%fp-12]             ! _maxpos.1              
BB3__selection_sort:                                                          
                                                               
      add   %l1, 1, %l4               ! l(88): add _inner.1 1 t10DEF
      mov   %l4, %l1                  ! t10 -> _inner.1        
      st    %l1, [%fp-8]              ! _inner.1               
co10011:                                                          
      ba    BB2__selection_sort       ! l(90): jmp wh10011     
      nop                             ! BB2__selection_sort -> wh10011
BB4__selection_sort:                                                          
                                                               
if16008:                                                          
      cmp   %l1, %l2                                           
      ! l(92): jeq _maxpos.1 _outer.1 el16008                                                    
      be    BB5__selection_sort       ! BB5__selection_sort -> el16008
      nop                                                      
      st    %l1, [%fp-12]             ! _maxpos.1              
      st    %l2, [%fp-4]              ! _outer.1               
      sll   %l2, 2, %g1               ! mul 4                  
      ld    [%l4+%g1], %l5            ! _array.1 + t13         
      st    %l2, [%fp-4]              ! _outer.1               
      st    %l4, [%fp+68]             ! _array.1               
      mov   %l6, %l7                  ! (*)t13 -> _swap.1      
      st    %l7, [%fp-16]             ! _swap.1                
      sll   %l2, 2, %g1               ! mul 4                  
      ld    [%l4+%g1], %l6            ! _array.1 + t15         
      st    %l4, [%fp+68]             ! _array.1               
      sll   %l1, 2, %g1               ! mul 4                  
      ld    [%l4+%g1], %l2            ! _array.1 + t16         
      st    %l1, [%fp-12]             ! _maxpos.1              
      st    %l4, [%fp+68]             ! _array.1               
      mov   %i0, %i1                  ! (*)t16 -> (*)t15       
      sll   %l1, 2, %g1               ! mul 4                  
      ld    [%l4+%g1], %i0            ! _array.1 + t18         
      mov   %l7, %l1                  ! _swap.1 -> (*)t18      
BB5__selection_sort:                                                          
                                                               
      sub   %l4, 1, %l7               ! l(108): sub _outer.1 1 t20DEF
      mov   %l7, %l4                  ! t20 -> _outer.1        
      st    %l4, [%fp-4]              ! _outer.1               
co7008:                                                          
      ba    BB1__selection_sort       ! l(110): jmp wh7008     
      nop                             ! BB1__selection_sort -> wh7008
BB6__selection_sort:                                                          
                                                               
      ret                             ! l(112): ret void       
      restore                                                    
                                                               
.text                                                          
LC1:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -208, %sp                                     
BB0__main:                                                          
      mov   0, %l4                    ! 0 -> _count.2          
      st    %l4, [%fp-104]            ! _count.2               
      mov   0, %l7                    ! 0 -> _done.2           
      st    %l7, [%fp-112]            ! _done.2                
BB1__main:                                                          
wh33008:                                                          
      cmp   %l7, 0                    ! l(123): jne _done.2 0 br33008
      bne   BB5__main                 ! BB5__main -> br33008   
      nop                                                      
if34008:                                                          
      cmp   %l4, 25                   ! l(125): jlt _count.2 25 el34008
      bl    BB2__main                 ! BB2__main -> el34008   
      nop                                                      
      mov   1, %l4                    ! 1 -> _done.2           
      st    %l4, [%fp-112]            ! _done.2                
      ba    BB4__main                 ! l(128): jmp fi34008    
      nop                             ! BB4__main -> fi34008   
BB2__main:                                                          
                                      ! l(131): arg 0 _geti (&)_num.2
      call  _geti                     ! l(133): cal 1 _geti t28
      add   %fp, -108, %o0            ! emit_arg (delay)       
      mov   %o0, %l4                  ! save rtn reg %o0-> (t28)
      cmp   %l4, 0                    ! l(134): jne t28 0 el36014
      bne   BB3__main                 ! BB3__main -> el36014   
      nop                                                      
      mov   1, %l4                    ! 1 -> _done.2           
      st    %l4, [%fp-112]            ! _done.2                
      ba    BB4__main                 ! l(137): jmp fi36014    
      nop                             ! BB4__main -> fi36014   
BB3__main:                                                          
      sll   %l7, 2, %g1               ! mul 4                  
      ld    [%l4+%g1], %i2            ! (&)_array.2 + t31      
      st    %l7, [%fp-104]            ! _count.2               
      mov   %l4, %i3                  ! _num.2 -> (*)t31       
      add   %l7, 1, %l4               ! l(143): add _count.2 1 t33DEF
      mov   %l4, %l7                  ! t33 -> _count.2        
      st    %l7, [%fp-104]            ! _count.2               
BB4__main:                                                          
co33008:                                                          
      ba    BB1__main                 ! l(147): jmp wh33008    
      nop                             ! BB1__main -> wh33008   
BB5__main:                                                          
                                                               
      ! l(149): arg 0 _selection_sort (&)_array.2                                                    
                                                               
      ! l(150): arg 1 _selection_sort _count.2                                                    
      ld    [%fp + -104], %o1         ! emit_arg ld from local 
      call  _selection_sort                                    
      ! l(152): cal 2 _selection_sort t35                                                    
      add   %fp, -100, %o0            ! emit_arg (delay)       
                                      ! OPT#3 not-used so skip 
      mov   0, %l4                    ! 0 -> _index.2          
      st    %l4, [%fp-116]            ! _index.2               
BB6__main:                                                          
wh45008:                                                          
      cmp   %l4, %g2                                           
      ! l(154): jge _index.2 _count.2 br45008                                                    
      bge   BB7__main                 ! BB7__main -> br45008   
      nop                                                      
      st    %l4, [%fp-116]            ! _index.2               
      call  _puti                     ! l(158): cal 1 _puti t38
      mov   %l4,  %o0                                          
      ! l(156): arg 0 _puti _index.2 (delay)                                                    
                                      ! OPT#3 not-used so skip 
                                      ! l(160): arg 0 _puts s39
      sethi %hi(s39), %g1             ! emit_arg string        
      call  _puts                     ! l(162): cal 1 _puts t40
      or    %g1, %lo(s39), %o0        ! emit_arg < s39 (delay) 
                                      ! OPT#3 not-used so skip 
      sll   %l4, 2, %g1               ! mul 4                  
      ld    [%l7+%g1], %i4            ! (&)_array.2 + t41      
      st    %l4, [%fp-116]            ! _index.2               
                                      ! l(165): arg 0 _puti (*)t41
      call  _puti                     ! l(167): cal 1 _puti t42
      mov   %g0, %o0                  ! emit_arg real (delay)  
                                      ! OPT#3 not-used so skip 
                                      ! l(168): arg 0 _putc '\n'
      call  _putc                     ! l(170): cal 1 _putc t43
      mov   '\n', %o0                 ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
      add   %l4, 1, %l7               ! l(172): add _index.2 1 t44DEF
      mov   %l7, %l4                  ! t44 -> _index.2        
      st    %l4, [%fp-116]            ! _index.2               
co45008:                                                          
      ba    BB6__main                 ! l(174): jmp wh45008    
      nop                             ! BB6__main -> wh45008   
BB7__main:                                                          
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(176): ret 0          
      restore                                                    
