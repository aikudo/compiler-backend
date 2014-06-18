.text                                                          
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -96, %sp                                      
      st    %i1, [%fp+72]             ! store aliased valued   
BB0__main:                                                          
      mov   0, %l0                    ! 0 -> _count.1          
      st    %l0, [%fp-4]              ! _count.1               
BB1__main:                                                          
wh8008:                                                          
      cmp   %l0, %i0                                           
      ! l(26): jge _count.1 _argc.1 br8008                                                    
      bge   BB2__main                 ! BB2__main -> br8008    
      nop                                                      
      st    %l0, [%fp-4]              ! _count.1               
      sll   %l0, 2, %g1               ! mul 4                  
      ld    [%i1+%g1], %l1            ! _argv.1 + t2           
      st    %l0, [%fp-4]              ! _count.1               
                                      ! l(30): arg 0 _puts (*)t2
      call  _puts                     ! l(32): cal 1 _puts t3  
      mov   %g0, %o0                  ! emit_arg real (delay)  
                                      ! OPT#3 not-used so skip 
                                      ! l(33): arg 0 _putc '\n'
      call  _putc                     ! l(35): cal 1 _putc t4  
      mov   '\n', %o0                 ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
      add   %l0, 1, %l2               ! l(37): add _count.1 1 t5DEF
      mov   %l2, %l0                  ! t5 -> _count.1         
      st    %l0, [%fp-4]              ! _count.1               
co8008:                                                          
      ba    BB1__main                 ! l(39): jmp wh8008      
      nop                             ! BB1__main -> wh8008    
BB2__main:                                                          
      ld    [%fp + -4], %g1           ! l(41): ret _count.1    
      mov   %g1, %i0                  ! emit_ret               
      ret                             ! l(41): ret _count.1    
      restore                                                    
