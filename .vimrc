set number
set mouse=a
set syntax=on
set termguicolors
set laststatus=2
set noshowmode

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'

call plug#end()

let g:lightline = {
	 \ 'colorscheme': 'wombat',
	 \ }
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
" let g:airline_theme =

colorscheme tokyonight
