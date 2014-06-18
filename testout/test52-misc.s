.text                                                          
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _inner_product                                                    
                                                               
_inner_product:                                                          
                                                               
      save  %sp, -104, %sp                                     
      st    %i1, [%fp+72]             ! store aliased valued   
      st    %i2, [%fp+76]             ! store aliased valued   
BB0__inner_product:                                                          
                                                               
      mov   0, %l0                    ! 0 -> _i.1              
      st    %l0, [%fp-4]              ! _i.1                   
      mov   0, %l1                    ! 0 -> _sum.1            
      st    %l1, [%fp-8]              ! _sum.1                 
BB1__inner_product:                                                          
                                                               
wh12008:                                                          
      cmp   %l0, %i0                  ! l(97): jge _i.1 _len.1 br12008
      bge   BB2__inner_product        ! BB2__inner_product -> br12008
      nop                                                      
      st    %l0, [%fp-4]              ! _i.1                   
      sll   %l0, 2, %g1               ! mul 4                  
      ld    [%i1+%g1], %l1            ! _in_vector1.1 + t3     
      st    %l0, [%fp-4]              ! _i.1                   
      sll   %l0, 2, %g1               ! mul 4                  
      ld    [%i2+%g1], %l2            ! _in_vector2.1 + t4     
      st    %l0, [%fp-4]              ! _i.1                   
      smul  %l3, %l4, %l5             ! l(104): mul (*)t3 (*)t4 t5
      add   %l3, %l5, %l4             ! l(106): add _sum.1 t5 t6DEF
      mov   %l4, %l3                  ! t6 -> _sum.1           
      st    %l3, [%fp-8]              ! _sum.1                 
      add   %l0, 1, %l4               ! l(109): add _i.1 1 t8DEF
      mov   %l4, %l0                  ! t8 -> _i.1             
      st    %l0, [%fp-4]              ! _i.1                   
co12008:                                                          
      ba    BB1__inner_product        ! l(111): jmp wh12008    
      nop                             ! BB1__inner_product -> wh12008
BB2__inner_product:                                                          
                                                               
      ld    [%fp + -8], %g1           ! l(113): ret _sum.1     
      mov   %g1, %i0                  ! emit_ret               
      ret                             ! l(113): ret _sum.1     
      restore                                                    
                                                               
.text                                                          
LC1:                                                           
      .align 4                                                    
      .global _time_killer                                                    
                                                               
_time_killer:                                                          
      save  %sp, -904, %sp                                     
BB0__time_killer:                                                          
                                                               
      mov   0, %l0                    ! 0 -> _i.2              
      st    %l0, [%fp-4]              ! _i.2                   
      mov   0, %l3                    ! 0 -> _j.2              
      st    %l3, [%fp-8]              ! _j.2                   
BB1__time_killer:                                                          
                                                               
wh31008:                                                          
      cmp   %l0, %i0                                           
      ! l(127): jge _i.2 _outer.2 br31008                                                    
      bge   BB4__time_killer          ! BB4__time_killer -> br31008
      nop                                                      
BB2__time_killer:                                                          
                                                               
wh33011:                                                          
      cmp   %l0, %i1                                           
      ! l(129): jge _j.2 _inner.2 br33011                                                    
      bge   BB3__time_killer          ! BB3__time_killer -> br33011
      nop                                                      
      st    %l0, [%fp-8]              ! _j.2                   
      add   %l0, 1, %l3               ! l(132): add _j.2 1 t14DEF
      mov   %l3, %l0                  ! t14 -> _j.2            
      st    %l0, [%fp-8]              ! _j.2                   
co33011:                                                          
      ba    BB2__time_killer          ! l(134): jmp wh33011    
      nop                             ! BB2__time_killer -> wh33011
BB3__time_killer:                                                          
                                                               
co31008:                                                          
      ba    BB1__time_killer          ! l(136): jmp wh31008    
      nop                             ! BB1__time_killer -> wh31008
BB4__time_killer:                                                          
                                                               
      ret                             ! l(138): ret void       
      restore                                                    
                                                               
.text                                                          
LC2:                                                           
      .align 4                                                    
      .global _swap                                                    
_swap:                                                          
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
      st    %i1, [%fp+72]             ! store aliased valued   
BB0__swap:                                                          
      mov   %i0, %l0                  ! _int_ptr1.3 -> t16     
      st    %i0, [%fp+68]             ! _int_ptr1.3            
      mov   %l3, %l4                  ! (*)t16 -> _temp.3      
      st    %l4, [%fp-4]              ! _temp.3                
      mov   %i0, %l3                  ! _int_ptr1.3 -> t18     
      mov   %i1, %l5                  ! _int_ptr2.3 -> t19     
      st    %i1, [%fp+72]             ! _int_ptr2.3            
      mov   %l6, %l7                  ! (*)t19 -> (*)t18       
      mov   %i1, %l6                  ! _int_ptr2.3 -> t21     
      mov   %l4, %i0                  ! _temp.3 -> (*)t21      
      ret                             ! l(156): ret void       
      restore                                                    
                                                               
.text                                                          
LC3:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -192, %sp                                     
      st    %i1, [%fp+72]             ! store aliased valued   
BB0__main:                                                          
if59005:                                                          
      cmp   %i0, 3                    ! l(168): jne _argc.4 3 el59005
      bne   BB3__main                 ! BB3__main -> el59005   
      nop                                                      
      mov   %i1, %g2                  ! _argv.4 -> t24         
      add   %g2, 1, %g3               ! l(173): add t24 1 t25DEF
      mov   %g3, %g2                  ! t25 -> t26             
      mov   %g3, %g4                  ! (*)t26 -> t27          
      mov   %g3, %o0                  ! (*)t27 -> _digit.4     
      st    %o0, [%fp-1]              ! _digit.4               
      sub   %o0, '0', %g3             ! l(180): sub _digit.4 '0' t29DEF
      mov   %g3, %o0                  ! t29 -> t30             
      mov   %o0, %g3                  ! t30 -> _len.4          
      st    %g3, [%fp-5]              ! _len.4                 
if65008:                                                          
      cmp   %g3, 0                    ! l(184): jlt _len.4 0 el65008
      bl    BB2__main                 ! BB2__main -> el65008   
      nop                                                      
      st    %g3, [%fp-5]              ! _len.4                 
if66011:                                                          
      cmp   %g3, 9                    ! l(186): jgt _len.4 9 el66011
      bg    BB1__main                 ! BB1__main -> el66011   
      nop                                                      
      st    %g3, [%fp-5]              ! _len.4                 
                                                               
      ! l(189): arg 1 _inner_product (&)_v1.4                                                    
      add   %fp, -45, %o1             ! emit_arg addr: (&)_v1.4
                                                               
      ! l(190): arg 2 _inner_product (&)_v2.4                                                    
      add   %fp, -85, %o2             ! emit_arg addr: (&)_v2.4
      call  _inner_product                                     
      ! l(192): cal 3 _inner_product t34                                                    
      mov   %g3,  %o0                                          
      ! l(188): arg 0 _inner_product _len.4 (delay)                                                    
      mov   %o0, %l4                  ! save rtn reg %o0-> (t34)
      mov   %l4, %i0                  ! t34 -> _ret_val.4      
      st    %i0, [%fp-89]             ! _ret_val.4             
      ba    BB1__main                 ! l(194): jmp fi66011    
      nop                             ! BB1__main -> fi66011   
BB1__main:                                                          
      ba    BB2__main                 ! l(197): jmp fi65008    
      nop                             ! BB2__main -> fi65008   
BB2__main:                                                          
      ba    BB4__main                 ! l(200): jmp fi59005    
      nop                             ! BB4__main -> fi59005   
BB3__main:                                                          
      mov   0, %g1                    ! mul 4                  
      sll   %g1, 2, %g1               ! mul 4                  
      ld    [%o0+%g1], %o1            ! (&)_v1.4 + t36         
      mov   0, %g1                    ! mul 4                  
      sll   %g1, 2, %g1               ! mul 4                  
      ld    [%o0+%g1], %o2            ! (&)_v2.4 + t38         
      mov   %o2,  %o1                 ! l(207): arg 1 _swap t38
      call  _swap                     ! l(209): cal 2 _swap t40
      mov   %o1,  %o0                 ! l(206): arg 0 _swap t36 (delay)
                                      ! OPT#3 not-used so skip 
BB4__main:                                                          
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(211): ret 0          
      restore                                                    
