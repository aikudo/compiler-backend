.text                                                          
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _main                                                    
_main:                                                          
      save  %sp, -112, %sp                                     
BB0__main:                                                          
      mov   6, %l0                    ! 6 -> _i1.1             
      st    %l0, [%fp-4]              ! _i1.1                  
      mov   8, %l1                    ! 8 -> _i2.1             
      st    %l1, [%fp-8]              ! _i2.1                  
      mov   0, %l2                    ! 0 -> _i3.1             
      st    %l2, [%fp-12]             ! _i3.1                  
      mov   'a', %l3                  ! 'a' -> _c1.1           
      st    %l3, [%fp-13]             ! _c1.1                  
      mov   'b', %l4                  ! 'b' -> _c2.1           
      st    %l4, [%fp-14]             ! _c2.1                  
      mov   0, %l3                    ! 0 -> t5                
      mov   %l3, %l4                  ! t5 -> _c3.1            
      st    %l4, [%fp-15]             ! _c3.1                  
if11005:                                                          
      cmp   %l0, %l1                  ! l(53): jne _i1.1 _i2.1 el11005
      bne   BB1__main                 ! BB1__main -> el11005   
      nop                                                      
      smul  %l2, 10, %l0              ! l(56): mul _i3.1 10 t8 
      add   %l0, 1, %l1               ! l(58): add t8 1 t9DEF  
      mov   %l1, %l0                  ! t9 -> _i3.1            
      st    %l0, [%fp-12]             ! _i3.1                  
      ba    BB2__main                 ! l(60): jmp fi11005     
      nop                             ! BB2__main -> fi11005   
BB1__main:                                                          
      smul  %l0, 10, %l1              ! l(63): mul _i3.1 10 t11
      add   %l1, 0, %l0               ! l(65): add t11 0 t12DEF
      mov   %l0, %l1                  ! t12 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
BB2__main:                                                          
if12005:                                                          
      cmp   %l0, %l2                  ! l(68): jeq _i1.1 _i2.1 el12005
      be    BB3__main                 ! BB3__main -> el12005   
      nop                                                      
      smul  %l0, 10, %l1              ! l(71): mul _i3.1 10 t15
      add   %l1, 1, %l0               ! l(73): add t15 1 t16DEF
      mov   %l0, %l1                  ! t16 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
      ba    BB4__main                 ! l(75): jmp fi12005     
      nop                             ! BB4__main -> fi12005   
BB3__main:                                                          
      smul  %l0, 10, %l1              ! l(78): mul _i3.1 10 t18
      add   %l1, 0, %l0               ! l(80): add t18 0 t19DEF
      mov   %l0, %l1                  ! t19 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
BB4__main:                                                          
if13005:                                                          
      cmp   %l0, %l2                  ! l(83): jge _i1.1 _i2.1 el13005
      bge   BB5__main                 ! BB5__main -> el13005   
      nop                                                      
      smul  %l0, 10, %l1              ! l(86): mul _i3.1 10 t22
      add   %l1, 1, %l0               ! l(88): add t22 1 t23DEF
      mov   %l0, %l1                  ! t23 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
      ba    BB6__main                 ! l(90): jmp fi13005     
      nop                             ! BB6__main -> fi13005   
BB5__main:                                                          
      smul  %l0, 10, %l1              ! l(93): mul _i3.1 10 t25
      add   %l1, 0, %l0               ! l(95): add t25 0 t26DEF
      mov   %l0, %l1                  ! t26 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
BB6__main:                                                          
if14005:                                                          
      cmp   %l0, %l2                  ! l(98): jlt _i1.1 _i2.1 el14005
      bl    BB7__main                 ! BB7__main -> el14005   
      nop                                                      
      smul  %l0, 10, %l1              ! l(101): mul _i3.1 10 t29
      add   %l1, 1, %l0               ! l(103): add t29 1 t30DEF
      mov   %l0, %l1                  ! t30 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
      ba    BB8__main                 ! l(105): jmp fi14005    
      nop                             ! BB8__main -> fi14005   
BB7__main:                                                          
      smul  %l0, 10, %l1              ! l(108): mul _i3.1 10 t32
      add   %l1, 0, %l0               ! l(110): add t32 0 t33DEF
      mov   %l0, %l1                  ! t33 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
BB8__main:                                                          
if15005:                                                          
      cmp   %l0, %l2                  ! l(113): jle _i1.1 _i2.1 el15005
      ble   BB9__main                 ! BB9__main -> el15005   
      nop                                                      
      smul  %l0, 10, %l1              ! l(116): mul _i3.1 10 t36
      add   %l1, 1, %l0               ! l(118): add t36 1 t37DEF
      mov   %l0, %l1                  ! t37 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
      ba    BB10__main                ! l(120): jmp fi15005    
      nop                             ! BB10__main -> fi15005  
BB9__main:                                                          
      smul  %l0, 10, %l1              ! l(123): mul _i3.1 10 t39
      add   %l1, 0, %l0               ! l(125): add t39 0 t40DEF
      mov   %l0, %l1                  ! t40 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
BB10__main:                                                          
if16005:                                                          
      cmp   %l0, %l2                  ! l(128): jgt _i1.1 _i2.1 el16005
      bg    BB11__main                ! BB11__main -> el16005  
      nop                                                      
      smul  %l0, 10, %l1              ! l(131): mul _i3.1 10 t43
      add   %l1, 1, %l0               ! l(133): add t43 1 t44DEF
      mov   %l0, %l1                  ! t44 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
      ba    BB12__main                ! l(135): jmp fi16005    
      nop                             ! BB12__main -> fi16005  
BB11__main:                                                          
      smul  %l0, 10, %l1              ! l(138): mul _i3.1 10 t46
      add   %l1, 0, %l0               ! l(140): add t46 0 t47DEF
      mov   %l0, %l1                  ! t47 -> _i3.1           
      st    %l1, [%fp-12]             ! _i3.1                  
BB12__main:                                                          
      call  _puti                     ! l(145): cal 1 _puti t49
      mov   %l1,  %o0                                          
      ! l(143): arg 0 _puti _i3.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
                                      ! l(146): arg 0 _putc '\n'
      call  _putc                     ! l(148): cal 1 _putc t50
      mov   '\n', %o0                 ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
      mov   0, %l0                    ! 0 -> _i3.1             
      st    %l0, [%fp-12]             ! _i3.1                  
if21005:                                                          
      cmp   %l1, %l2                  ! l(150): jne _c1.1 _c2.1 el21005
      bne   BB13__main                ! BB13__main -> el21005  
      nop                                                      
      smul  %l0, 10, %l1              ! l(153): mul _i3.1 10 t53
      mov   '1', %l0                  ! '1' -> t54             
      add   %l1, %l0, %l2             ! l(157): add t53 t54 t55DEF
      mov   %l2, %l0                  ! t55 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
      ba    BB14__main                ! l(159): jmp fi21005    
      nop                             ! BB14__main -> fi21005  
BB13__main:                                                          
      smul  %l0, 10, %l1              ! l(162): mul _i3.1 10 t57
      mov   '0', %l0                  ! '0' -> t58             
      add   %l1, %l0, %l2             ! l(166): add t57 t58 t59DEF
      mov   %l2, %l0                  ! t59 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
BB14__main:                                                          
if22005:                                                          
      cmp   %l1, %l2                  ! l(169): jeq _c1.1 _c2.1 el22005
      be    BB15__main                ! BB15__main -> el22005  
      nop                                                      
      smul  %l0, 10, %l1              ! l(172): mul _i3.1 10 t62
      mov   '1', %l0                  ! '1' -> t63             
      add   %l1, %l0, %l2             ! l(176): add t62 t63 t64DEF
      mov   %l2, %l0                  ! t64 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
      ba    BB16__main                ! l(178): jmp fi22005    
      nop                             ! BB16__main -> fi22005  
BB15__main:                                                          
      smul  %l0, 10, %l1              ! l(181): mul _i3.1 10 t66
      mov   '0', %l0                  ! '0' -> t67             
      add   %l1, %l0, %l2             ! l(185): add t66 t67 t68DEF
      mov   %l2, %l0                  ! t68 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
BB16__main:                                                          
if23005:                                                          
      cmp   %l1, %l2                  ! l(188): jge _c1.1 _c2.1 el23005
      bge   BB17__main                ! BB17__main -> el23005  
      nop                                                      
      smul  %l0, 10, %l1              ! l(191): mul _i3.1 10 t71
      mov   '1', %l0                  ! '1' -> t72             
      add   %l1, %l0, %l2             ! l(195): add t71 t72 t73DEF
      mov   %l2, %l0                  ! t73 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
      ba    BB18__main                ! l(197): jmp fi23005    
      nop                             ! BB18__main -> fi23005  
BB17__main:                                                          
      smul  %l0, 10, %l1              ! l(200): mul _i3.1 10 t75
      mov   '0', %l0                  ! '0' -> t76             
      add   %l1, %l0, %l2             ! l(204): add t75 t76 t77DEF
      mov   %l2, %l0                  ! t77 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
BB18__main:                                                          
if24005:                                                          
      cmp   %l1, %l2                  ! l(207): jlt _c1.1 _c2.1 el24005
      bl    BB19__main                ! BB19__main -> el24005  
      nop                                                      
      smul  %l0, 10, %l1              ! l(210): mul _i3.1 10 t80
      mov   '1', %l0                  ! '1' -> t81             
      add   %l1, %l0, %l2             ! l(214): add t80 t81 t82DEF
      mov   %l2, %l0                  ! t82 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
      ba    BB20__main                ! l(216): jmp fi24005    
      nop                             ! BB20__main -> fi24005  
BB19__main:                                                          
      smul  %l0, 10, %l1              ! l(219): mul _i3.1 10 t84
      mov   '0', %l0                  ! '0' -> t85             
      add   %l1, %l0, %l2             ! l(223): add t84 t85 t86DEF
      mov   %l2, %l0                  ! t86 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
BB20__main:                                                          
if25005:                                                          
      cmp   %l1, %l2                  ! l(226): jle _c1.1 _c2.1 el25005
      ble   BB21__main                ! BB21__main -> el25005  
      nop                                                      
      smul  %l0, 10, %l1              ! l(229): mul _i3.1 10 t89
      mov   '1', %l0                  ! '1' -> t90             
      add   %l1, %l0, %l2             ! l(233): add t89 t90 t91DEF
      mov   %l2, %l0                  ! t91 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
      ba    BB22__main                ! l(235): jmp fi25005    
      nop                             ! BB22__main -> fi25005  
BB21__main:                                                          
      smul  %l0, 10, %l1              ! l(238): mul _i3.1 10 t93
      mov   '0', %l0                  ! '0' -> t94             
      add   %l1, %l0, %l2             ! l(242): add t93 t94 t95DEF
      mov   %l2, %l0                  ! t95 -> _i3.1           
      st    %l0, [%fp-12]             ! _i3.1                  
BB22__main:                                                          
if26005:                                                          
      cmp   %l1, %l2                  ! l(245): jgt _c1.1 _c2.1 el26005
      bg    BB23__main                ! BB23__main -> el26005  
      nop                                                      
      smul  %l0, 10, %l1              ! l(248): mul _i3.1 10 t98
      mov   '1', %l0                  ! '1' -> t99             
      add   %l1, %l0, %l2             ! l(252): add t98 t99 t100DEF
      mov   %l2, %l0                  ! t100 -> _i3.1          
      st    %l0, [%fp-12]             ! _i3.1                  
      ba    BB24__main                ! l(254): jmp fi26005    
      nop                             ! BB24__main -> fi26005  
BB23__main:                                                          
      smul  %l0, 10, %l1              ! l(257): mul _i3.1 10 t102
      mov   '0', %l0                  ! '0' -> t103            
      add   %l1, %l0, %l2             ! l(261): add t102 t103 t104DEF
      mov   %l2, %l0                  ! t104 -> _i3.1          
      st    %l0, [%fp-12]             ! _i3.1                  
BB24__main:                                                          
      call  _puti                     ! l(266): cal 1 _puti t106
      mov   %l0,  %o0                                          
      ! l(264): arg 0 _puti _i3.1 (delay)                                                    
                                      ! OPT#3 not-used so skip 
                                      ! l(267): arg 0 _putc '\n'
      call  _putc                     ! l(269): cal 1 _putc t107
      mov   '\n', %o0                 ! emit_arg digit (delay) 
                                      ! OPT#3 not-used so skip 
      mov   0, %i0                    ! emit_ret               
      ret                             ! l(270): ret 0          
      restore                                                    
