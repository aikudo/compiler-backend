.text                                                          
s0:   .asciz "Hello,\040World.\n"                               
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -96, %sp                                      
BB0__main:                                                          
                                      ! l(21): arg 0 _puts s0  
      sethi %hi(s0), %g1              ! emit_arg string        
      call  _puts                     ! l(23): cal 1 _puts t1  
      or    %g1, %lo(s0), %o0         ! emit_arg < s0 (delay)  
                                      ! OPT#3 not-used so skip 
                                      ! l(24): arg 0 _putc '\n'
      call  _putc                     ! l(26): cal 1 _putc t2  
      mov   '\n', %o0                 ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
                                      ! l(27): arg 0 _puti 2147483647
      sethi %hi(2147483647), %o0      ! emit_arg > |2^23|      
      call  _puti                     ! l(29): cal 1 _puti t3  
      or    %o0, %lo(2147483647), %o0 ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
                                      ! l(30): arg 0 _putc '\n'
      call  _putc                     ! l(32): cal 1 _putc t4  
      mov   '\n', %o0                 ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
                                      ! l(33): arg 0 _exit 0   
      call  _exit                     ! l(35): cal 1 _exit t5  
      mov   0, %o0                    ! emit_arg < |2^23| (delay)
                                      ! OPT#3 not-used so skip 
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(36): ret 0           
      restore                                                    
