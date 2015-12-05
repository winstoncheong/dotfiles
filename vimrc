set nocompatible "Required preamble for Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'tpope/vim-git'
Plugin 'scrooloose/nerdtree'

" Snippets
Plugin 'SirVer/ultisnips' " The engine
Plugin 'honza/vim-snippets' "The snippets

call vundle#end()

filetype plugin indent on

" Enable highlighting for syntax
syntax on

" Whitespace
set ts=4 sts=4 sw=4 noex " Tabbing settings
set autoindent smartindent
set list
set listchars=tab:▸\ ,eol:¬


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
"set cursorline

" Persistent undo
if has('persistent_undo')
  set undofile
  set undolevels=500
  set undoreload=500
endif

" Remove unwanted spaces on write
autocmd FileType c,cpp,java,php,tex autocmd BufWritePre <buffer> :%s/\s\+$//e

" NERDTree mappings
noremap <C-n> :NERDTreeToggle<CR>


" }}}

" Plugin configuration {{{
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" }}}
