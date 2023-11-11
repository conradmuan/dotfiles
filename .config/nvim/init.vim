set encoding=utf-8
scriptencoding utf-8
syntax on
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hls is
set list
set listchars=tab:→\ ,space:·,

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'agude/vim-eldar'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'troyfletcher/vim-colors-synthwave'
Plug 'svjunic/radicalgoodspeed.vim'
Plug 'sheerun/vim-polyglot'
Plug 'amadeus/vim-evokai'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'github/copilot.vim'
Plug 'airblade/vim-gitgutter'
Plug 'prisma/vim-prisma'
Plug 'leafOfTree/vim-svelte-plugin'
call plug#end()

lua require('nvimtree')

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

if filereadable('./svelte.config.js')
  let g:coc_global_extensions += ['coc-svelte']
endif

let g:coc_global_extensions += ['coc-stylelintplus']

let g:vim_svelte_plugin_load_full_syntax = 1
let g:vim_svelte_plugin_use_typescript = 1

colorscheme purify
" industry
" purify
" koehler
" orbital
" spacecamp
" parsec
" angr
" apprentice
" gotham256

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>yp :let @+=expand("%:.:h")<CR>
" coc config
lua require('coc')

