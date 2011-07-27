" Solarized colorscheme
syntax enable
set background=dark
colorscheme solarized

" Default 3 spaces for a tab 
set tabstop=3
set shiftwidth=3

" Turn on autocomplete menu
set wildmenu

" Turn on search highlighting
set hlsearch

" Set some ridiculous sizes for defaults
" so that it maximizes macvim on launch
set lines=400
set columns=400

" Turn off the menu in macvim
if has("gui_running")
	set guioptions=-t
endif

" Map CommandT plugin to Command-d like
" XCode quick open
nmap <D-d> :CommandT<CR>

" Spaces to tabs
set expandtab

" Light 80 column ruler for non-intrusive
" visual guide for format
set colorcolumn=80

" Add line numbers
set number

" Set the status line to something nifty
set stl=%f\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2
