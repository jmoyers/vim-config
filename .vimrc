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

nmap <D-d> :CommandT<CR>
