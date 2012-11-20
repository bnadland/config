"" general configurations
set nocompatible
set encoding=utf-8

" activate pathogen
call pathogen#infect()

" backgrounding tainted buffers allowed
set hidden

" show incomplete commands
set showcmd

" show line,column,percentage in the lower right
set ruler

" show tabs
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,nbsp:.,eol:←

" activate filtype plugin
filetype plugin on

" search parent directories for tags file
set tags=tags;

" ignore case in searches
"set ignorecase
" ignore case in searches if search query is lowercase
set smartcase

" syntax highlighting
syntax on

" set colors
colorscheme own

" add current file to git
map <F1> :!git add %<CR> 

" interactive git commit
map <F2> :!git cm<CR>

" NERDTree plugin
map <F3> :NERDTreeToggle<CR>

" tagbar plugin
nmap <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_left = 1

" git update
map <F5> :!git pull && git push;git st<CR>

" check current file for php syntax errors
map <F6> :!php -l %<CR>

" execute current file with php
map <F7> :!php %<CR>

" request syntax group
map <F8> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" backspace
set backspace=indent,eol,start

" set tab options
" set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
