.text                                                          
s24:  .asciz "Numeri\040di\040figlio\040Bonacci\n"                          
                                                               
s33:  .asciz "\n"                                               
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _pad                                                    
_pad:                                                          
      save  %sp, -96, %sp                                      
BB0__pad:                                                          
      mov   5, %l0                    ! 5 -> _width.1          
      st    %l0, [%fp-4]              ! _width.1               
BB1__pad:                                                          
wh9008:                                                          
      cmp   %l0, 0                    ! l(50): jle _width.1 0 br9008
      ble   BB3__pad                  ! BB3__pad -> br9008     
      nop                                                      
      st    %l0, [%fp-4]              ! _width.1               
      sub   %l0, 1, %l1               ! l(53): sub _width.1 1 t2DEF
      mov   %l1, %l0                  ! t2 -> _width.1         
      st    %l0, [%fp-4]              ! _width.1               
      sra   %i0, 31, %g1              ! l(56): div _n.1 10 t4  
      wr    %g1, 0, %y                                         
      sdiv  %i0, 10, %l1                                       
      nop                                                      
      nop                                                      
      nop                                                      
      mov   %l1, %l0                  ! t4 -> _n.1             
      st    %l0, [%fp+68]             ! _n.1                   
if12008:                                                          
      cmp   %l0, 0                    ! l(58): jne _n.1 0 el12008
      bne   BB2__pad                  ! BB2__pad -> el12008    
      nop                                                      
                                      ! l(60): arg 0 _putc '\040'
      call  _putc                     ! l(62): cal 1 _putc t7  
      mov   '\040', %o0               ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
BB2__pad:                                                          
co9008:                                                          
      ba    BB1__pad                  ! l(65): jmp wh9008      
      nop                             ! BB1__pad -> wh9008     
BB3__pad:                                                          
      ret                             ! l(67): ret void        
      restore                                                    
                                                               
.text                                                          
LC1:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -176, %sp                                     
BB0__main:                                                          
      mov   0, %g1                    ! mul 4                  
      sll   %g1, 2, %g1               ! mul 4                  
      ld    [%l0+%g1], %l1            ! (&)_fibonacci.2 + t8   
      mov   0, %l2                    ! 0 -> (*)t8             
      mov   1, %g1                    ! mul 4                  
      sll   %g1, 2, %g1               ! mul 4                  
      ld    [%l0+%g1], %l3            ! (&)_fibonacci.2 + t10  
      mov   1, %l0                    ! 1 -> (*)t10            
      mov   2, %l4                    ! 2 -> _n.2              
      st    %l4, [%fp-84]             ! _n.2                   
BB1__main:                                                          
wh24008:                                                          
      cmp   %l4, 20                   ! l(80): jge _n.2 20 br24008
      bge   BB2__main                 ! BB2__main -> br24008   
      nop                                                      
      st    %l4, [%fp-84]             ! _n.2                   
      sll   %l4, 2, %g1               ! mul 4                  
      ld    [%l5+%g1], %l6            ! (&)_fibonacci.2 + t14  
      st    %l4, [%fp-84]             ! _n.2                   
      sub   %l4, 1, %l7               ! l(85): sub _n.2 1 t15DEF
      st    %l4, [%fp-84]             ! _n.2                   
      sll   %l7, 2, %g1               ! mul 4                  
      ld    [%l5+%g1], %i0            ! (&)_fibonacci.2 + t16  
      sub   %l4, 2, %l7               ! l(89): sub _n.2 2 t17DEF
      st    %l4, [%fp-84]             ! _n.2                   
      sll   %l7, 2, %g1               ! mul 4                  
      ld    [%l5+%g1], %i1            ! (&)_fibonacci.2 + t18  
      add   %l5, %l7, %i2             ! l(93): add (*)t16 (*)t18 t19DEF
      mov   %i2, %l5                  ! t19 -> (*)t14          
      add   %l4, 1, %l7               ! l(96): add _n.2 1 t21DEF
      mov   %l7, %l4                  ! t21 -> _n.2            
      st    %l4, [%fp-84]             ! _n.2                   
co24008:                                                          
      ba    BB1__main                 ! l(98): jmp wh24008     
      nop                             ! BB1__main -> wh24008   
BB2__main:                                                          
      mov   0, %g2                    ! 0 -> _n.2              
      st    %g2, [%fp-84]             ! _n.2                   
                                      ! l(102): arg 0 _puts s24
      sethi %hi(s24), %g1             ! emit_arg string        
      call  _puts                     ! l(104): cal 1 _puts t25
      or    %g1, %lo(s24), %o0        ! emit_arg < s24 (delay) 
                                      ! OPT#3 not-used so skip 
BB3__main:                                                          
wh30008:                                                          
      cmp   %g2, 20                   ! l(105): jge _n.2 20 br30008
      bge   BB4__main                 ! BB4__main -> br30008   
      nop                                                      
      st    %g2, [%fp-84]             ! _n.2                   
      call  _pad                      ! l(109): cal 1 _pad t27 
      mov   %g2,  %o0                 ! l(107): arg 0 _pad _n.2 (delay)
                                      ! OPT#3 not-used so skip 
      call  _puti                     ! l(112): cal 1 _puti t28
      mov   %g2,  %o0                                          
      ! l(110): arg 0 _puti _n.2 (delay)                                                    
                                      ! OPT#3 not-used so skip 
      sll   %g2, 2, %g1               ! mul 4                  
      ld    [%l4+%g1], %l7            ! (&)_fibonacci.2 + t29  
      st    %g2, [%fp-84]             ! _n.2                   
                                      ! l(115): arg 0 _pad (*)t29
      call  _pad                      ! l(117): cal 1 _pad t30 
      mov   %g0, %o0                  ! emit_arg real (delay)  
                                      ! OPT#3 not-used so skip 
      sll   %g2, 2, %g1               ! mul 4                  
      ld    [%l4+%g1], %i2            ! (&)_fibonacci.2 + t31  
      st    %g2, [%fp-84]             ! _n.2                   
                                      ! l(120): arg 0 _puti (*)t31
      call  _puti                     ! l(122): cal 1 _puti t32
      mov   %g0, %o0                  ! emit_arg real (delay)  
                                      ! OPT#3 not-used so skip 
                                      ! l(124): arg 0 _puts s33
      sethi %hi(s33), %g1             ! emit_arg string        
      call  _puts                     ! l(126): cal 1 _puts t34
      or    %g1, %lo(s33), %o0        ! emit_arg < s33 (delay) 
                                      ! OPT#3 not-used so skip 
      add   %g2, 1, %l4               ! l(128): add _n.2 1 t35DEF
      mov   %l4, %i3                  ! t35 -> _n.2            
      st    %i3, [%fp-84]             ! _n.2                   
co30008:                                                          
      ba    BB3__main                 ! l(130): jmp wh30008    
      nop                             ! BB3__main -> wh30008   
BB4__main:                                                          
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(132): ret 0          
      restore                                                    
