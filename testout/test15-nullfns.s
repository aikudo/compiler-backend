.text                                                          
                                                               
.bss                                                           
      .align 4                                                  
                                                               
                                                               
.text                                                          
LC0:                                                           
      .align 4                                                    
      .global _xexit                                                    
                                                               
_xexit:                                                          
      save  %sp, -96, %sp                                      
BB0__xexit:                                                          
                                                               
.text                                                          
LC1:                                                           
      .align 4                                                    
      .global _xgetc                                                    
                                                               
_xgetc:                                                          
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
BB0__xgetc:                                                          
                                                               
.text                                                          
LC2:                                                           
      .align 4                                                    
      .global _xgeti                                                    
                                                               
_xgeti:                                                          
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
BB0__xgeti:                                                          
                                                               
.text                                                          
LC3:                                                           
      .align 4                                                    
      .global _xgets                                                    
                                                               
_xgets:                                                          
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
BB0__xgets:                                                          
                                                               
.text                                                          
LC4:                                                           
      .align 4                                                    
      .global _xputc                                                    
                                                               
_xputc:                                                          
      save  %sp, -96, %sp                                      
BB0__xputc:                                                          
                                                               
.text                                                          
LC5:                                                           
      .align 4                                                    
      .global _xputi                                                    
                                                               
_xputi:                                                          
      save  %sp, -96, %sp                                      
BB0__xputi:                                                          
                                                               
.text                                                          
LC6:                                                           
      .align 4                                                    
      .global _xputp                                                    
                                                               
_xputp:                                                          
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
BB0__xputp:                                                          
                                                               
.text                                                          
LC7:                                                           
      .align 4                                                    
      .global _xputs                                                    
                                                               
_xputs:                                                          
      save  %sp, -96, %sp                                      
      st    %i0, [%fp+68]             ! store aliased valued   
BB0__xputs:                                                          
