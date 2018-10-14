" Specify a directory for plugins "
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"Plug 'ryanoasis/vim-devicons'
" Run :PlugInstall to install all plugins 
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'mhartington/oceanic-next'
Plug 'scrooloose/nerdtree'
" Initialize plugin system
call plug#end()

set encoding=UTF-8
set mouse=a
syntax on
filetype plugin indent on
syntax enable
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" for vim 7
set t_Co=256
set number
set noswapfile

" for vim 8
if (has("termguicolors"))
	set termguicolors
endif
set tabstop=2
set shiftwidth=2

" ================
" NERDTree
" ================

" toggle NERDTree with ctrl + n
map <C-n> :NERDTreeToggle<CR>

" ================
" Syntastic
" ================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

