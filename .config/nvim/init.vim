" plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'

call plug#end()

" support 24-bit colors
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
if (has("termguicolors"))
	set termguicolors
endif

" theming
set background=dark
colorscheme tokyonight
let g:lightline = {'colorscheme' : 'tokyonight'}
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
set laststatus=2

" line numbers and syntax
set number
set relativenumber
syntax on
