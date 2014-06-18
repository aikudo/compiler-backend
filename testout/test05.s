.text                                                          
s2:   .asciz "\040no_params\040done\n"                          
s6:   .asciz "\040one_param\040done\n"                          
s10:  .asciz "\040two_params\040done\n"                          
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _func_no_params                                                    
                                                               
_func_no_params:                                                          
                                                               
      save  %sp, -96, %sp                                      
BB0__func_no_params:                                                          
                                                               
      mov   3, %g2                    ! 3 -> _overloaded.1     
      st    %g2, [%fp-4]              ! _overloaded.1          
      call  _puti                     ! l(63): cal 1 _puti t1  
      mov   %g2,  %o0                                          
      ! l(61): arg 0 _puti _overloaded.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
                                      ! l(65): arg 0 _puts s2  
      sethi %hi(s2), %g1              ! emit_arg string        
      call  _puts                     ! l(67): cal 1 _puts t3  
      or    %g1, %lo(s2), %o0         ! emit_arg < s2 (delay)  
                                      ! OPT#3 not-used so skip 
      ret                             ! l(68): ret void        
      restore                                                    
                                                               
.text                                                          
LC1:                                                           
      .align 4                                                    
      .global _func_one_param                                                    
                                                               
_func_one_param:                                                          
                                                               
      save  %sp, -96, %sp                                      
BB0__func_one_param:                                                          
                                                               
      add   %i0, 6, %l0               ! l(76): add _only.2 6 t4DEF
      mov   %l0, %l1                  ! t4 -> _overloaded.2    
      st    %l1, [%fp-4]              ! _overloaded.2          
                                      ! l(79): arg 0 _puts s6  
      sethi %hi(s6), %g1              ! emit_arg string        
      call  _puts                     ! l(81): cal 1 _puts t7  
      or    %g1, %lo(s6), %o0         ! emit_arg < s6 (delay)  
                                      ! OPT#3 not-used so skip 
      sethi %hi(314159), %i0          ! emit_ret               
      or    %i0, %lo(314159), %i0     ! emit_ret               
      ret                             ! l(82): ret 314159      
      restore                                                    
                                                               
.text                                                          
LC2:                                                           
      .align 4                                                    
      .global _func_two_params                                                    
                                                               
_func_two_params:                                                          
                                                               
      save  %sp, -96, %sp                                      
BB0__func_two_params:                                                          
                                                               
      add   %i0, %i1, %g3                                      
      ! l(91): add _first.3 _second.3 t8DEF                                                    
      call  _puti                     ! l(94): cal 1 _puti t9  
      mov   %g3,  %o0                 ! l(92): arg 0 _puti t8 (delay)
                                      ! OPT#3 not-used so skip 
                                      ! l(96): arg 0 _puts s10 
      sethi %hi(s10), %g1             ! emit_arg string        
      call  _puts                     ! l(98): cal 1 _puts t11 
      or    %g1, %lo(s10), %o0        ! emit_arg < s10 (delay) 
                                      ! OPT#3 not-used so skip 
      mov   'c', %i0                  ! emit_ret               
      ret                             ! l(99): ret 'c'         
      restore                                                    
                                                               
.text                                                          
LC3:                                                           
      .align 4                                                    
      .global _func_four_params                                                    
                                                               
_func_four_params:                                                          
                                                               
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
      st    %i1, [%fp+72]             ! store aliased valued   
BB0__func_four_params:                                                          
                                                               
      ret                             ! l(109): ret void       
      restore                                                    
                                                               
.text                                                          
LC4:                                                           
      .align 4                                                    
      .global _star_crazy                                                    
                                                               
_star_crazy:                                                          
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
BB0__star_crazy:                                                          
                                                               
      ret                             ! l(115): ret void       
      restore                                                    
                                                               
.text                                                          
LC5:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -184, %sp                                     
BB0__main:                                                          
      call  _func_no_params                                    
      ! l(123): cal 0 _func_no_params t12                                                    
      nop                             ! no parameter           
                                      ! OPT#3 not-used so skip 
                                      ! l(124): arg 0 _func_one_param 6
      call  _func_one_param                                    
      ! l(126): cal 1 _func_one_param t13                                                    
      mov   6, %o0                    ! emit_arg < |2^23| (delay)
      mov   %o0, %l0                  ! save rtn reg %o0-> (t13)
      mov   %l0, %l1                  ! t13 -> _f.6            
      st    %l1, [%fp-4]              ! _f.6                   
                                                               
      ! l(128): arg 0 _func_two_params 4                                                    
      mov   'r', %l0                  ! 'r' -> t15             
      mov   %l0,  %o1                                          
      ! l(131): arg 1 _func_two_params t15                                                    
      call  _func_two_params                                   
      ! l(133): cal 2 _func_two_params t16                                                    
      mov   4, %o0                    ! emit_arg < |2^23| (delay)
      mov   %o0, %l2                  ! save rtn reg %o0-> (t16)
      mov   %l2, %l3                  ! t16 -> t17             
      mov   %l3, %l2                  ! t17 -> _c.6            
      st    %l2, [%fp-8]              ! _c.6                   
                                                               
      ! l(137): arg 0 _func_four_params (&)_f.6                                                    
                                                               
      ! l(138): arg 1 _func_four_params (&)_c.6                                                    
      add   %fp, -8, %o1              ! emit_arg addr: (&)_c.6 
      mov   %l1,  %o2                                          
      ! l(139): arg 2 _func_four_params _f.6                                                    
      mov   %l2, %l3                  ! _c.6 -> t21            
      st    %l2, [%fp-8]              ! _c.6                   
      mov   %l3,  %o3                                          
      ! l(142): arg 3 _func_four_params t21                                                    
      call  _func_four_params                                  
      ! l(144): cal 4 _func_four_params t22                                                    
      add   %fp, -4, %o0              ! emit_arg (delay)       
                                      ! OPT#3 not-used so skip 
                                                               
      ! l(145): arg 0 _star_crazy (&)_hisss.6                                                    
      call  _star_crazy               ! l(147): cal 1 _star_crazy t23
      add   %fp, -88, %o0             ! emit_arg (delay)       
                                      ! OPT#3 not-used so skip 
      add   %l1, %l2, %l4             ! l(149): add _f.6 _c.6 t24DEF
      mov   %l4, %i0                  ! l(150): ret t24        
      ret                             ! l(150): ret t24        
      restore                                                    
