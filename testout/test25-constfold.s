.text                                                          
s13:  .asciz "pi="                                              
s19:  .asciz "one\040is\040true\n"                              
s22:  .asciz "zero\040is\040true\n"                             
s25:  .asciz "if\040then\040else\040is\040true\n"                          
                                                               
s27:  .asciz "if\040then\040else\040is\040false\n"                          
                                                               
s30:  .asciz "This\040is\040harder\040to\040optimize.\n"                          
                                                               
s33:  .asciz "This\040statement\040should\040never\040be\040printed.\n"                          
                                                               
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _pi                                                    
_pi:                                                           
      save  %sp, -96, %sp                                      
BB0__pi:                                                          
      smul  3, 10, %l0                ! l(41): mul 3 10 t0     
      add   %l0, 1, %l1               ! l(43): add t0 1 t1DEF  
      smul  %l1, 10, %l0              ! l(45): mul t1 10 t2    
      add   %l0, 4, %l1               ! l(47): add t2 4 t3DEF  
      smul  %l1, 10, %l0              ! l(49): mul t3 10 t4    
      add   %l0, 1, %l1               ! l(51): add t4 1 t5DEF  
      smul  %l1, 10, %l0              ! l(53): mul t5 10 t6    
      add   %l0, 5, %l1               ! l(55): add t6 5 t7DEF  
      smul  %l1, 10, %l0              ! l(57): mul t7 10 t8    
      add   %l0, 9, %l1               ! l(59): add t8 9 t9DEF  
      mov   %l1, %i0                  ! l(60): ret t9          
      ret                             ! l(60): ret t9          
      restore                                                    
                                                               
.text                                                          
LC1:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -104, %sp                                     
      st    %i1, [%fp+72]             ! store aliased valued   
BB0__main:                                                          
      mov   3, %g2                    ! 3 -> _yes.2            
      st    %g2, [%fp-4]              ! _yes.2                 
      mov   0, %g3                    ! 0 -> _zero.2           
      st    %g3, [%fp-8]              ! _zero.2                
      mov   0, %g2                    ! 0 -> _NULL.2           
      st    %g2, [%fp-12]             ! _NULL.2                
                                      ! l(74): arg 0 _puts s13 
      sethi %hi(s13), %g1             ! emit_arg string        
      call  _puts                     ! l(76): cal 1 _puts t14 
      or    %g1, %lo(s13), %o0        ! emit_arg < s13 (delay) 
                                      ! OPT#3 not-used so skip 
      call  _pi                       ! l(78): cal 0 _pi t15   
      nop                             ! no parameter           
      mov   %o0, %l0                  ! save rtn reg %o0-> (t15)
      call  _puti                     ! l(81): cal 1 _puti t16 
      mov   %l0,  %o0                 ! l(79): arg 0 _puti t15 (delay)
                                      ! OPT#3 not-used so skip 
                                      ! l(82): arg 0 _putc '\n'
      call  _putc                     ! l(84): cal 1 _putc t17 
      mov   '\n', %o0                 ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
if22005:                                                          
      cmp   1, 0                      ! l(85): jeq 1 0 el22005 
      be    BB1__main                 ! BB1__main -> el22005   
      nop                                                      
                                      ! l(88): arg 0 _puts s19 
      sethi %hi(s19), %g1             ! emit_arg string        
      call  _puts                     ! l(90): cal 1 _puts t20 
      or    %g1, %lo(s19), %o0        ! emit_arg < s19 (delay) 
                                      ! OPT#3 not-used so skip 
BB1__main:                                                          
if23005:                                                          
      cmp   0, 0                      ! l(93): jeq 0 0 el23005 
      be    BB2__main                 ! BB2__main -> el23005   
      nop                                                      
                                      ! l(96): arg 0 _puts s22 
      sethi %hi(s22), %g1             ! emit_arg string        
      call  _puts                     ! l(98): cal 1 _puts t23 
      or    %g1, %lo(s22), %o0        ! emit_arg < s22 (delay) 
                                      ! OPT#3 not-used so skip 
BB2__main:                                                          
if24005:                                                          
      cmp   1, 0                      ! l(101): jeq 1 0 el24005
      be    BB3__main                 ! BB3__main -> el24005   
      nop                                                      
                                      ! l(104): arg 0 _puts s25
      sethi %hi(s25), %g1             ! emit_arg string        
      call  _puts                     ! l(106): cal 1 _puts t26
      or    %g1, %lo(s25), %o0        ! emit_arg < s25 (delay) 
                                      ! OPT#3 not-used so skip 
      ba    BB4__main                 ! l(107): jmp fi24005    
      nop                             ! BB4__main -> fi24005   
BB3__main:                                                          
                                      ! l(110): arg 0 _puts s27
      sethi %hi(s27), %g1             ! emit_arg string        
      call  _puts                     ! l(112): cal 1 _puts t28
      or    %g1, %lo(s27), %o0        ! emit_arg < s27 (delay) 
                                      ! OPT#3 not-used so skip 
BB4__main:                                                          
if29005:                                                          
      cmp   %g2, 0                    ! l(114): jeq _yes.2 0 el29005
      be    BB5__main                 ! BB5__main -> el29005   
      nop                                                      
                                      ! l(117): arg 0 _puts s30
      sethi %hi(s30), %g1             ! emit_arg string        
      call  _puts                     ! l(119): cal 1 _puts t31
      or    %g1, %lo(s30), %o0        ! emit_arg < s30 (delay) 
                                      ! OPT#3 not-used so skip 
BB5__main:                                                          
if30005:                                                          
      cmp   %g2, 0                    ! l(122): jeq _zero.2 0 el30005
      be    BB6__main                 ! BB6__main -> el30005   
      nop                                                      
                                      ! l(125): arg 0 _puts s33
      sethi %hi(s33), %g1             ! emit_arg string        
      call  _puts                     ! l(127): cal 1 _puts t34
      or    %g1, %lo(s33), %o0        ! emit_arg < s33 (delay) 
                                      ! OPT#3 not-used so skip 
BB6__main:                                                          
      ld    [%fp + -8], %g1           ! l(130): ret _zero.2    
      mov   %g1, %i0                  ! emit_ret               
      ret                             ! l(130): ret _zero.2    
      restore                                                    
