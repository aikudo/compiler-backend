.text                                                          
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -144, %sp                                     
BB0__main:                                                          
      mov   19, %g2                   ! 19 -> _i2.1            
      st    %g2, [%fp-4]              ! _i2.1                  
      mov   4, %g3                    ! 4 -> _i3.1             
      st    %g3, [%fp-8]              ! _i3.1                  
      mov   'e', %g4                  ! 'e' -> _c2.1           
      st    %g4, [%fp-37]             ! _c2.1                  
      mov   '\040', %o0               ! '\040' -> _c3.1        
      st    %o0, [%fp-38]             ! _c3.1                  
      add   %g2, %g3, %o1             ! l(79): add _i2.1 _i3.1 t4DEF
      st    %g2, [%fp-4]              ! _i2.1                  
      st    %g3, [%fp-8]              ! _i3.1                  
      mov   %o1, %o2                  ! t4 -> _ia.1            
      st    %o2, [%fp-12]             ! _ia.1                  
      call  _puti                     ! l(83): cal 1 _puti t6  
      mov   %o2,  %o0                                          
      ! l(81): arg 0 _puti _ia.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
      sub   %g2, %g3, %o0             ! l(85): sub _i2.1 _i3.1 t7DEF
      st    %g2, [%fp-4]              ! _i2.1                  
      st    %g3, [%fp-8]              ! _i3.1                  
      mov   %o0, %o1                  ! t7 -> _is.1            
      st    %o1, [%fp-16]             ! _is.1                  
      call  _puti                     ! l(89): cal 1 _puti t9  
      mov   %o1,  %o0                                          
      ! l(87): arg 0 _puti _is.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
      smul  %g2, %g3, %o0             ! l(91): mul _i2.1 _i3.1 t10
      st    %g2, [%fp-4]              ! _i2.1                  
      st    %g3, [%fp-8]              ! _i3.1                  
      mov   %o0, %o3                  ! t10 -> _im.1           
      st    %o3, [%fp-20]             ! _im.1                  
      call  _puti                     ! l(95): cal 1 _puti t12 
      mov   %o3,  %o0                                          
      ! l(93): arg 0 _puti _im.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
      sra   %g2, 31, %g1              ! l(97): div _i2.1 _i3.1 t13
      wr    %g1, 0, %y                                         
      sdiv  %g2, %g3, %o0                                      
      nop                                                      
      nop                                                      
      nop                                                      
      st    %g2, [%fp-4]              ! _i2.1                  
      st    %g3, [%fp-8]              ! _i3.1                  
      mov   %o0, %o4                  ! t13 -> _id.1           
      st    %o4, [%fp-24]             ! _id.1                  
      call  _puti                     ! l(101): cal 1 _puti t15
      mov   %o4,  %o0                                          
      ! l(99): arg 0 _puti _id.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
      add   %g2, %g3, %o0             ! l(103): rem _i2.1 _i3.1 t16
      nop                                                      
      ! don't know how to find remainder                                                    
      st    %g3, [%fp-8]              ! _i3.1                  
      mov   %o0, %g2                  ! t16 -> _ir.1           
      st    %g2, [%fp-28]             ! _ir.1                  
      call  _puti                     ! l(107): cal 1 _puti t18
      mov   %g2,  %o0                                          
      ! l(105): arg 0 _puti _ir.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
      add   %g0, %g3, %o0             ! l(109): add 0 _i3.1 t19DEF
      st    %g3, [%fp-8]              ! _i3.1                  
      mov   %o0, %o5                  ! t19 -> _ip.1           
      st    %o5, [%fp-32]             ! _ip.1                  
      call  _puti                     ! l(113): cal 1 _puti t21
      mov   %o5,  %o0                                          
      ! l(111): arg 0 _puti _ip.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
      sub   %g0, %g3, %o0             ! l(115): sub 0 _i3.1 t22DEF
      mov   %o0, %g3                  ! t22 -> _in.1           
      st    %g3, [%fp-36]             ! _in.1                  
      call  _puti                     ! l(119): cal 1 _puti t24
      mov   %g3,  %o0                                          
      ! l(117): arg 0 _puti _in.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
      add   %g4, %o0, %o7             ! l(121): add _c2.1 _c3.1 t25DEF
      st    %g4, [%fp-37]             ! _c2.1                  
      st    %o0, [%fp-38]             ! _c3.1                  
      mov   %o7, %l0                  ! t25 -> _ca.1           
      st    %l0, [%fp-39]             ! _ca.1                  
      mov   %l0, %o7                  ! _ca.1 -> t27           
      call  _puti                     ! l(127): cal 1 _puti t28
      mov   %o7,  %o0                 ! l(125): arg 0 _puti t27 (delay)
                                      ! OPT#3 not-used so skip 
      sub   %g4, %l0, %l1             ! l(129): sub _c2.1 _c3.1 t29DEF
      st    %g4, [%fp-37]             ! _c2.1                  
      st    %l0, [%fp-38]             ! _c3.1                  
      mov   %l1, %l2                  ! t29 -> _cs.1           
      st    %l2, [%fp-40]             ! _cs.1                  
      mov   %l2, %l1                  ! _cs.1 -> t31           
      call  _puti                     ! l(135): cal 1 _puti t32
      mov   %l1,  %o0                 ! l(133): arg 0 _puti t31 (delay)
                                      ! OPT#3 not-used so skip 
      smul  %g4, %l0, %l2             ! l(137): mul _c2.1 _c3.1 t33
      st    %g4, [%fp-37]             ! _c2.1                  
      st    %l0, [%fp-38]             ! _c3.1                  
      mov   %l2, %l3                  ! t33 -> _cm.1           
      st    %l3, [%fp-41]             ! _cm.1                  
      mov   %l3, %l2                  ! _cm.1 -> t35           
      call  _puti                     ! l(143): cal 1 _puti t36
      mov   %l2,  %o0                 ! l(141): arg 0 _puti t35 (delay)
                                      ! OPT#3 not-used so skip 
      sra   %g4, 31, %g1              ! l(145): div _c2.1 _c3.1 t37
      wr    %g1, 0, %y                                         
      sdiv  %g4, %l0, %l3                                      
      nop                                                      
      nop                                                      
      nop                                                      
      st    %g4, [%fp-37]             ! _c2.1                  
      st    %l0, [%fp-38]             ! _c3.1                  
      mov   %l3, %l4                  ! t37 -> _cd.1           
      st    %l4, [%fp-42]             ! _cd.1                  
      mov   %l4, %l3                  ! _cd.1 -> t39           
      call  _puti                     ! l(151): cal 1 _puti t40
      mov   %l3,  %o0                 ! l(149): arg 0 _puti t39 (delay)
                                      ! OPT#3 not-used so skip 
      add   %g4, %l0, %l4             ! l(153): rem _c2.1 _c3.1 t41
      nop                                                      
      ! don't know how to find remainder                                                    
      st    %l0, [%fp-38]             ! _c3.1                  
      mov   %l4, %l5                  ! t41 -> _cr.1           
      st    %l5, [%fp-43]             ! _cr.1                  
      mov   %l5, %l4                  ! _cr.1 -> t43           
      call  _puti                     ! l(159): cal 1 _puti t44
      mov   %l4,  %o0                 ! l(157): arg 0 _puti t43 (delay)
                                      ! OPT#3 not-used so skip 
      add   %g0, %l0, %l5             ! l(161): add 0 _c3.1 t45DEF
      st    %l0, [%fp-38]             ! _c3.1                  
      mov   %l5, %l6                  ! t45 -> _cp.1           
      st    %l6, [%fp-44]             ! _cp.1                  
      mov   %l6, %l5                  ! _cp.1 -> t47           
      call  _puti                     ! l(167): cal 1 _puti t48
      mov   %l5,  %o0                 ! l(165): arg 0 _puti t47 (delay)
                                      ! OPT#3 not-used so skip 
      sub   %g0, %l0, %l6             ! l(169): sub 0 _c3.1 t49DEF
      mov   %l6, %l0                  ! t49 -> _cn.1           
      st    %l0, [%fp-45]             ! _cn.1                  
      mov   %l0, %l6                  ! _cn.1 -> t51           
      call  _puti                     ! l(175): cal 1 _puti t52
      mov   %l6,  %o0                 ! l(173): arg 0 _puti t51 (delay)
                                      ! OPT#3 not-used so skip 
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(176): ret 0          
      restore                                                    
