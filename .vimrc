set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

nnoremap <C-g>  :YcmCompleter GoToDefinitionElseDeclaration<CR>
set number
" colorscheme PaperColor

" show existing tab with 4 spaces width
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
" python specific
autocmd BufNewFile,BufRead *.py set tabstop=4     " tabstop 4
autocmd BufNewFile,BufRead *.py set softtabstop=4 " spaces in tab
autocmd BufNewFile,BufRead *.py set shiftwidth=4
autocmd BufNewFile,BufRead *.py set smarttab      " tab inserts spaces
autocmd BufNewFile,BufRead *.py set expandtab     " tabs expanded to spaces
autocmd BufNewFile,BufRead *.py set smartindent   " autoindent

autocmd BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp set tabstop=2     " tabstop 4
autocmd BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp set softtabstop=2 " spaces in tab
autocmd BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp set shiftwidth=2
autocmd BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp set expandtab     " tabs expanded to spaces
autocmd BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp set smarttab      " tab inserts spaces

let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filter_diagnostics = {                                      
  \ "c": {                                                            
  \   "regex": [                                                      
  \     "-mno-fp-ret-in-387",                                         
  \     "-mpreferred-stack-boundary=3",                               
  \     "-mskip-rax-setup",                                           
  \     "-mindirect-branch=thunk-extern",                             
  \     "-mindirect-branch-register",                                 
  \     "-fno-allow-store-data-races",                                
  \     "-fplugin-arg-structleak_plugin-byref-all",                   
  \     "-fno-var-tracking-assignments",                              
  \     "-fconserve-stack",                                           
  \     "-mrecord-mcount",                                             
  \     "-drv_invalid_value_with_suggestion"
  \   ]                                                               
  \ }                                                                 
  \}    
