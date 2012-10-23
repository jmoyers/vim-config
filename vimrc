" Pathogen plugin load, take all bundles in the bundle/ and load them as if
" they were in the normal runtime environment, but you don't have to litter
" the files from different plugins all over your .vim folder
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" Snippets variables
let g:snips_author='Joshua Moyers'
let g:author='Joshua Moyers'
let g:snips_email='jmoyers@gmail.com'
let g:email='jmoyers@gmail.com'
let g:snips_github='https://github.com/jmoyers'
let g:github='https://github.com/jmoyers'

if strridx(getcwd(), "sococo") > 0
   let g:snips_company='Sococo'
   let g:company='Sococo'
else
   let g:snips_company=g:snips_author
   let g:company=g:snips_author
endif 

set rtp+=,~/.vim/snippets'

" Enable syntax highlight
syntax enable

set autoindent
set smartindent
set ttyfast

" Spaces to tabs
set expandtab

au BufRead,BufNewFile *.json set ft=javascript

function s:setupMarkdown()
   set filetype=markdown
   set tabstop=4
   set shiftwidth=4
endfunction

" Override default modulo2 bullshit 4 space tabs are imporant in markdown
au BufRead,BufNewFile *.{md,mkd,markdown} call s:setupMarkdown()

function s:setupPHP()
   set tabstop=4
   set shiftwidth=4
endfunction

" Our php projects are tabstop 4 for now
au BufRead,BufNewFile *.php call s:setupPHP()

function s:setupJS()
   set tabstop=4
   set shiftwidth=4
endfunction

" Our php projects are tabstop 4 for now
au BufRead,BufNewFile *.js call s:setupJS()

function s:setupObjC()
   set tabstop=4
   set shiftwidth=4
   set noexpandtab
endfunction

au FileType objc call s:setupObjC()

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

" Light 80 column ruler for non-intrusive visual guide for format
if exists('+colorcolumn')
   set colorcolumn=80
endif

" Add line numbers
set number

" Set the status line to something nifty
set stl=%f\ Line:%l/%L\ (%p%%)\ Col:%v\ Buf:#%n\ 0x%B

" always show a status line
set laststatus=2

" Turn off folds
set nofoldenable
