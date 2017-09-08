set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'octol/vim-cpp-enhanced-highlight'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" new version of vim is dumb and wont delete over line breaks
set backspace=2

" Snippets variables
let g:snips_author='Joshua Moyers'
let g:author='Joshua Moyers'
let g:snips_email='jmoyers@gmail.com'
let g:email='jmoyers@gmail.com'
let g:snips_github='https://github.com/jmoyers'
let g:github='https://github.com/jmoyers'

set rtp+=,~/.vim/snippets'

" Enable syntax highlight
syntax enable

set autoindent
set smartindent
set ttyfast

" Spaces to tabs
set expandtab
set tabstop=2
set shiftwidth=2

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
