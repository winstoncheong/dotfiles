call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-latex/vim-latex'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }


" color scheme
Plug 'altercation/vim-colors-solarized'

call plug#end()

" Editor experience
set number
set scrolloff=5
set sidescrolloff=5
set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Set up tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

" Set color scheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized


let mapleader = " "

filetype plugin indent on
syntax on
set encoding=utf-8
set clipboard=unnamedplus



" Mappings
call togglebg#map("<F5>")

inoremap jk <ESC>
