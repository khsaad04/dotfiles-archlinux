" plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'vimwiki/vimwiki'

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

" syntax and stuff
set number
syntax on
set noshowmode
set autoindent
set nocompatible
filetype plugin on

" vimwiki

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
