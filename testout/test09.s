.text                                                          
s20:  .asciz "\nHello,\040world!\n"                             
s23:  .asciz "\nHello,\040world!\n"                             
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -616, %sp                                     
BB0__main:                                                          
                                      ! l(38): arg 0 _getc (&)_c.1
      call  _getc                     ! l(40): cal 1 _getc t1  
      add   %fp, -1, %o0              ! emit_arg (delay)       
      mov   %o0, %g2                  ! save rtn reg %o0-> (t1)
      mov   %g2, %g3                  ! t1 -> _eof.1           
      st    %g3, [%fp-509]            ! _eof.1                 
                                      ! l(42): arg 0 _geti (&)_i.1
      call  _geti                     ! l(44): cal 1 _geti t4  
      add   %fp, -5, %o0              ! emit_arg (delay)       
      mov   %o0, %l0                  ! save rtn reg %o0-> (t4)
      mov   %l0, %l1                  ! t4 -> _eof.1           
      st    %l1, [%fp-509]            ! _eof.1                 
                                      ! l(46): arg 0 _gets (&)_s.1
      call  _gets                     ! l(48): cal 1 _gets t6  
      add   %fp, -505, %o0            ! emit_arg (delay)       
      mov   %o0, %l0                  ! save rtn reg %o0-> (t6)
      mov   %l0, %l1                  ! t6 -> _eof.1           
      st    %l1, [%fp-509]            ! _eof.1                 
                                      ! l(50): arg 0 _putc _c.1
      call  _putc                     ! l(52): cal 1 _putc t8  
      ld    [%fp + -1], %o0           ! emit_arg < _c.1 (delay)
      mov   %o0, %l0                  ! save rtn reg %o0-> (t8)
      mov   %l0, %l1                  ! t8 -> _len.1           
      st    %l1, [%fp-513]            ! _len.1                 
                                      ! l(54): arg 0 _puti _i.1
      call  _puti                     ! l(56): cal 1 _puti t10 
      ld    [%fp + -5], %o0           ! emit_arg < _i.1 (delay)
      mov   %o0, %l0                  ! save rtn reg %o0-> (t10)
      mov   %l0, %l1                  ! t10 -> _len.1          
      st    %l1, [%fp-513]            ! _len.1                 
                                      ! l(58): arg 0 _putp (&)_s.1
      call  _putp                     ! l(60): cal 1 _putp t12 
      add   %fp, -505, %o0            ! emit_arg (delay)       
      mov   %o0, %l0                  ! save rtn reg %o0-> (t12)
      mov   %l0, %l1                  ! t12 -> _len.1          
      st    %l1, [%fp-513]            ! _len.1                 
                                      ! l(62): arg 0 _puts (&)_s.1
      call  _puts                     ! l(64): cal 1 _puts t14 
      add   %fp, -505, %o0            ! emit_arg (delay)       
      mov   %o0, %l0                  ! save rtn reg %o0-> (t14)
      mov   %l0, %l1                  ! t14 -> _len.1          
      st    %l1, [%fp-513]            ! _len.1                 
                                      ! l(66): arg 0 _putc 'c' 
      call  _putc                     ! l(68): cal 1 _putc t16 
      mov   'c', %o0                  ! emit_arg digit (delay) 
      mov   %o0, %l0                  ! save rtn reg %o0-> (t16)
      mov   %l0, %l1                  ! t16 -> _len.1          
      st    %l1, [%fp-513]            ! _len.1                 
                                      ! l(70): arg 0 _puti 123 
      call  _puti                     ! l(72): cal 1 _puti t18 
      mov   123, %o0                  ! emit_arg < |2^23| (delay)
      mov   %o0, %l0                  ! save rtn reg %o0-> (t18)
      mov   %l0, %l1                  ! t18 -> _len.1          
      st    %l1, [%fp-513]            ! _len.1                 
                                      ! l(75): arg 0 _putp s20 
      sethi %hi(s20), %g1             ! emit_arg string        
      call  _putp                     ! l(77): cal 1 _putp t21 
      or    %g1, %lo(s20), %o0        ! emit_arg < s20 (delay) 
      mov   %o0, %l0                  ! save rtn reg %o0-> (t21)
      mov   %l0, %l1                  ! t21 -> _len.1          
      st    %l1, [%fp-513]            ! _len.1                 
                                      ! l(80): arg 0 _puts s23 
      sethi %hi(s23), %g1             ! emit_arg string        
      call  _puts                     ! l(82): cal 1 _puts t24 
      or    %g1, %lo(s23), %o0        ! emit_arg < s23 (delay) 
      mov   %o0, %l0                  ! save rtn reg %o0-> (t24)
      mov   %l0, %l1                  ! t24 -> _len.1          
      st    %l1, [%fp-513]            ! _len.1                 
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(84): ret 0           
      restore                                                    
