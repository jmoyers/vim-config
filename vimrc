" Enable syntax highlight
syntax enable

" Markdown support
au BufRead,BufNewFile *.{md,mkd,markdown}    set filetype=markdown

" Solarized colorscheme
set background=dark
colorscheme solarized

" Default 3 spaces for a tab 
set tabstop=3
set shiftwidth=3

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
