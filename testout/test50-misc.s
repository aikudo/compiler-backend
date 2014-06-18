.text                                                          
s13:  .asciz "We're\040done\n"                                  
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _flip_high_bit                                                    
                                                               
_flip_high_bit:                                                          
                                                               
      save  %sp, -96, %sp                                      
BB0__flip_high_bit:                                                          
                                                               
      sra   %i1, 31, %g1              ! l(53): div _upperbound.1 2 t0
      wr    %g1, 0, %y                                         
      sdiv  %i1, 2, %l0                                        
      nop                                                      
      nop                                                      
      nop                                                      
      mov   %l0, %l1                  ! t0 -> _half_val.1      
      st    %l1, [%fp-4]              ! _half_val.1            
if12005:                                                          
      cmp   %i0, %l1                                           
      ! l(55): jge _number.1 _half_val.1 el12005                                                    
      bge   BB2__flip_high_bit        ! BB2__flip_high_bit -> el12005
      nop                                                      
      st    %l1, [%fp-4]              ! _half_val.1            
      st    %i0, [%fp+68]             ! _number.1              
      add   %i0, %l1, %l0                                      
      ! l(58): add _number.1 _half_val.1 t3DEF                                                    
      mov   %l0, %i0                  ! l(59): ret t3          
      ret                             ! l(59): ret t3          
      restore                                                    
BB2__flip_high_bit:                                                          
                                                               
      sub   %l1, %l2, %l3                                      
      ! l(63): sub _number.1 _half_val.1 t4DEF                                                    
      mov   %l3, %i0                  ! l(64): ret t4          
      ret                             ! l(64): ret t4          
      restore                                                    
BB3__flip_high_bit:                                                          
                                                               
                                                               
.text                                                          
LC1:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -96, %sp                                      
BB0__main:                                                          
      mov   0, %l1                    ! 0 -> _i.2              
      st    %l1, [%fp-4]              ! _i.2                   
BB1__main:                                                          
wh31008:                                                          
      cmp   %l1, 25                   ! l(72): jge _i.2 25 br31008
      bge   BB2__main                 ! BB2__main -> br31008   
      nop                                                      
      st    %l1, [%fp-4]              ! _i.2                   
      sll   %l1, 2, %g1               ! mul 4                  
      ld    [%l2+%g1], %l4            ! (&)_int_array + t7     
      st    %l1, [%fp-4]              ! _i.2                   
      sll   %l1, 2, %g1               ! mul 4                  
      ld    [%l2+%g1], %l5            ! (&)_int_array + t8     
      st    %l1, [%fp-4]              ! _i.2                   
                                                               
      ! l(78): arg 0 _flip_high_bit (*)t8                                                    
                                      ! l(79): arg 1 _flip_high_bit 256
      mov   256, %o1                  ! emit_arg < |2^23|      
      call  _flip_high_bit            ! l(81): cal 2 _flip_high_bit t9
      mov   %g0, %o0                  ! emit_arg real (delay)  
      mov   %o0, %l2                  ! save rtn reg %o0-> (t9)
      mov   %l2, %l6                  ! t9 -> (*)t7            
      add   %l1, 1, %l2               ! l(84): add _i.2 1 t11DEF
      mov   %l2, %l1                  ! t11 -> _i.2            
      st    %l1, [%fp-4]              ! _i.2                   
co31008:                                                          
      ba    BB1__main                 ! l(86): jmp wh31008     
      nop                             ! BB1__main -> wh31008   
BB2__main:                                                          
                                      ! l(89): arg 0 _puts s13 
      sethi %hi(s13), %g1             ! emit_arg string        
      call  _puts                     ! l(91): cal 1 _puts t14 
      or    %g1, %lo(s13), %o0        ! emit_arg < s13 (delay) 
                                      ! OPT#3 not-used so skip 
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(92): ret 0           
      restore                                                    
