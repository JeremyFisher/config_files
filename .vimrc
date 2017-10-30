" Indent automatically depending on filetype                                    
filetype indent on                                                              
" copy start____                                                                
"set autoindent                                                                 
set commentstring=" # %s"                                                           
set tabstop=4                                                                       
set shiftwidth=4                                                                    
set expandtab                                                                       
set shiftround                                                                      
set softtabstop=4                                                                   
set foldmethod=syntax                                                               
let g:syntastic_python_flake8_args = "--max-line-length=100"                    
set colorcolumn=80                                                              
let g:syntastic_python_checkers    = ['flake8', 'pylint']                       
" ______end                                                                     
" Turn on line numbering. Turn it off with "set nonu"                           
set number                                                                      
                                                                                
" Set syntax on                                                                 
syntax on                                                                       
                                                                                
" Case insensitive search                                                       
set ic                                                                          
                                                                                
" Higlhight search                                                              
set hls                                                                         
                                                                                
" Wrap text instead of being on one line                                        
set lbr                                                                         
                                                                                
" Change colorscheme from default to delek                                      
colorscheme elflord  

fun SetFileMappings()                                                               
    if &ft == "python" || &ft == "pyrex"                                            
        imap <F8> #!/usr/bin/env python^M# -*- coding: utf-8 -*-^M^M                
                                                                                    
        set commentstring=" # %s"                                                   
        set tabstop=4                                                               
        set shiftwidth=4                                                            
        set expandtab                                                           
        set shiftround                                                          
        set softtabstop=4                                                       
        set foldmethod=syntax                                                   
        let g:syntastic_python_flake8_args = "--max-line-length=100"            
    let g:syntastic_python_checkers    = ['flake8', 'pylint']                   
    " let g:syntastic_python_pylint_args = '--rcfile <somercfile>'              
    let g:syntastic_aggregate_errors = 1                                        
        if has("autocmd")                                                       
            autocmd BufWritePre *.py :%s/\s\+$//e                               
            autocmd BufWritePost *.py SyntasticCheck                            
        endif                                                                   
    endif                                                                       
endfun   
