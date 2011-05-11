"" general configurations
set encoding=utf-8

" show incomplete commands
set showcmd

" show line,column,percentage in the lower right
set ruler

" search parent directories for tags file
set tags=tags;

" ignore case in searches
set ignorecase

" syntax highlighting
syntax on

" set colors
colorscheme own

" line number toggle
map <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" backspace
set backspace=indent,eol,start

"" taglist plugin (to use on OpenBSD: pkg_add vim-taglist ectags)
" our ctags command is ectags (exuberant ctags)
let Tlist_Ctags_Cmd="ectags"
" use F4 to toggle tags buffer
map <F4> :TlistToggle<cr>
vmap <F4> <esc>:TlistToggle<cr>
imap <F4> <esc>:TlistToggle<cr>
" Remove extra information and blank lines from the taglist window
let Tlist_Compart_Format = 1
" Jump to taglist window on open
let Tlist_GainFocus_On_ToggleOpen = 1
" Show tag scope next to the tag name
let Tlist_Display_Tag_Scope = 1
" Don't Show the fold indicator column in the taglist window
let Tlist_Enable_Fold_Column = 0

" set autoindentation & tab options
" (this breaks Makefiles!)
set shiftwidth=2
set softtabstop=2
set tabstop=8
set autoindent
set smartindent
set smarttab
set expandtab

" autodetect filetype, load settings and indentation based on filetype
filetype plugin indent on

" go to next buffer
map <F3> :next<cr>

"" filetypes
" c
autocmd BufRead *.c map <F5> :make<cr>
autocmd BufRead *.c map <F6> :!make run<cr>

" c++
autocmd BufRead *.cpp map <F5> :make<cr>

" asm
autocmd BufRead *.s map <F5> :make<cr>
autocmd BufRead *.s map <F6> :!make run<cr>

" python
autocmd BufRead *.py map <F5> :!python %<cr>

" dot
autocmd BufRead *.dot map <F5> :!dot -Txlib %<cr>

" perl
autocmd BufRead *.pl map <F5> :!perl %<cr>
autocmd BufRead *.pl map <F6> :!sh -c "perl -c %;perlcritic %"<cr>
