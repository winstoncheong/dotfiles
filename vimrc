set nocompatible "Required preamble for Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'tpope/vim-git'
call vundle#end()

filetype plugin indent on

" Enable highlighting for syntax
syntax on

" Whitespace
set ts=4 sts=4 sw=4 noex " Tabbing settings
set autoindent smartindent


" Searching {{{
set hlsearch incsearch
set ignorecase smartcase
set magic
" }}}


" Useful settings {{{
set number

set backspace=indent,eol,start " allow backspacing over everything in insert mode

set wildmenu " for command-line completion
set wildmode=list:longest,full " specifies how command line completion works

set history=50

" View
set showcmd
set cursorline

" Persistent undo
if has('persistent_undo')
  set undofile
  set undolevels=500
  set undoreload=500
endif
" }}}
