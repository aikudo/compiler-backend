.text                                                          
s20:  .asciz "\040=\040"                                        
s23:  .asciz "!\n"                                              
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _mul_int                                                    
                                                               
_mul_int:                                                          
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
BB0__mul_int:                                                          
      mov   %i0, %l0                  ! _number.1 -> t0        
      st    %i0, [%fp+68]             ! _number.1              
                                                               
      ! OPT#5 ! l(57): mov _number.1 t1                                                     
      smul  %l1, %i1, %l2             ! l(59): mul (*)t1 _int_num.1 t2
      mov   %l2, %l1                  ! t2 -> (*)t0            
      ret                             ! l(61): ret void        
      restore                                                    
                                                               
.text                                                          
LC1:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -104, %sp                                     
BB0__main:                                                          
      mov   0, %l2                    ! 0 -> _counter.2        
      st    %l2, [%fp-4]              ! _counter.2             
      mov   1, %l3                    ! 1 -> _factorial.2      
      st    %l3, [%fp-8]              ! _factorial.2           
BB1__main:                                                          
wh22008:                                                          
      cmp   %l2, 31                                            
      ! l(70): jgt _counter.2 31 br22008                                                    
      bg    BB4__main                 ! BB4__main -> br22008   
      nop                                                      
      st    %l2, [%fp-4]              ! _counter.2             
if23008:                                                          
      cmp   %l2, 0                    ! l(72): jne _counter.2 0 el23008
      bne   BB2__main                 ! BB2__main -> el23008   
      nop                                                      
      mov   1, %l2                    ! 1 -> _factorial.2      
      st    %l2, [%fp-8]              ! _factorial.2           
      smul  %l3, 3, %l4               ! l(76): mul _global_int 3 t9
      mov   %l4, %l3                  ! t9 -> _global_int      
      st    %l3, [%fp+0]              ! _global_int            
      sub   %l3, %l2, %l4                                      
      ! l(79): sub _global_int _factorial.2 t11DEF                                                    
      smul  %l4, 623, %l2             ! l(81): mul t11 623 t12 
      mov   %l2, %l3                  ! t12 -> _global_int     
      st    %l3, [%fp+0]              ! _global_int            
      ba    BB3__main                 ! l(83): jmp fi23008     
      nop                             ! BB3__main -> fi23008   
BB2__main:                                                          
                                                               
      ! l(85): arg 0 _mul_int (&)_factorial.2                                                    
                                                               
      ! l(86): arg 1 _mul_int _counter.2                                                    
      ld    [%fp + -4], %o1           ! emit_arg ld from local 
      call  _mul_int                  ! l(88): cal 2 _mul_int t15
      add   %fp, -8, %o0              ! emit_arg (delay)       
                                      ! OPT#3 not-used so skip 
      sll   %l3, 2, %g1               ! mul 4                  
      ld    [%l2+%g1], %l4            ! (&)_global_array + t16 
      mov   %l2, %l3                  ! _factorial.2 -> (*)t16 
      st    %l2, [%fp-8]              ! _factorial.2           
      mov   %l2, %l5                  ! _factorial.2 -> _global_int
      st    %l5, [%fp+0]              ! _global_int            
BB3__main:                                                          
                                      ! l(94): arg 0 _puti _factorial.2
      call  _puti                     ! l(96): cal 1 _puti t19 
      ld    [%fp + -8], %o0           ! emit_arg < _factorial.2 (delay)
                                      ! OPT#3 not-used so skip 
                                      ! l(98): arg 0 _puts s20 
      sethi %hi(s20), %g1             ! emit_arg string        
      call  _puts                     ! l(100): cal 1 _puts t21
      or    %g1, %lo(s20), %o0        ! emit_arg < s20 (delay) 
                                      ! OPT#3 not-used so skip 
                                      ! l(101): arg 0 _puti _counter.2
      call  _puti                     ! l(103): cal 1 _puti t22
      ld    [%fp + -4], %o0           ! emit_arg < _counter.2 (delay)
                                      ! OPT#3 not-used so skip 
                                      ! l(105): arg 0 _puts s23
      sethi %hi(s23), %g1             ! emit_arg string        
      call  _puts                     ! l(107): cal 1 _puts t24
      or    %g1, %lo(s23), %o0        ! emit_arg < s23 (delay) 
                                      ! OPT#3 not-used so skip 
      add   %l2, 1, %l5               ! l(109): add _counter.2 1 t25DEF
      mov   %l5, %l2                  ! t25 -> _counter.2      
      st    %l2, [%fp-4]              ! _counter.2             
co22008:                                                          
      ba    BB1__main                 ! l(111): jmp wh22008    
      nop                             ! BB1__main -> wh22008   
BB4__main:                                                          
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(113): ret 0          
      restore                                                    
