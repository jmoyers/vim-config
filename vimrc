" Enable syntax highlight
syntax enable

" Default 3 spaces for a tab 
set tabstop=3
set shiftwidth=3

set autoindent
set smartindent
set ttyfast

function s:setupMarkdown()
   set filetype=markdown
   set tabstop=4
   set shiftwidth=4
endfunction

" Override default modulo2 bullshit
" 4 space tabs are imporant in markdown
au BufRead,BufNewFile *.{md,mkd,markdown} call s:setupMarkdown()

function s:setupPHP()
   set tabstop=4
   set shiftwidth=4
endfunction

" Our php projects are tabstop 4 for now
au BufRead,BufNewFile *.php call s:setupPHP()

" Solarized colorscheme
set background=dark
colorscheme solarized

" Turn on autocomplete menu
set wildmenu

" Turn on search highlighting
set hlsearch

" Deal with upper/lower better
set smartcase
set ignorecase

" Spaces to tabs
set expandtab

" Light 80 column ruler for non-intrusive
" visual guide for format
set colorcolumn=80

" Add line numbers
set number

" Set the status line to something nifty
set stl=%f\ Line:%l/%L\ (%p%%)\ Col:%v\ Buf:#%n\ 0x%B

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2
