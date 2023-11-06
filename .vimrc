set encoding=utf-8
scriptencoding utf-8
syntax on
set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hls is
set re=0
set list 
set listchars=tab:→\ ,space:·,

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'agude/vim-eldar'
Plug 'sheerun/vim-polyglot'
call plug#end()

colorscheme eldar

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
