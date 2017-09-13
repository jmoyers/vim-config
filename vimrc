set nocompatible      " be iMproved, required
set encoding=utf-8
set clipboard=unnamed " Allow yank to go to system clipboard

" Allows you to :e file automplete in subdirectories
set path+=**
set wildmenu

" For some reason, the vertical bar cursor stopped working by default in
" insert mode, and I found this which also apparently applies some fixes to
" tmux, which I use
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'swift.vim'
Plugin 'vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" new version of vim is dumb and wont delete over line breaks
set backspace=2

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
