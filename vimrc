call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'


Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-latex/vim-latex'

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'

Plug 'airblade/vim-gitgutter'


" color scheme
Plug 'altercation/vim-colors-solarized'

call plug#end()

" Editor experience
set number relativenumber
set scrolloff=5
set sidescrolloff=5
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set linebreak
set display+=lastline
set wrap
set wildmenu
set wildmode=list:longest,full
set history=1000
"set mouse=a
set autoread
set confirm
set encoding=utf-8
set t_Co=256
set cursorline " highlight current line


" Set up tabs / indentation
set autoindent
set smartindent
set list
set listchars=tab:▸\ ,eol:¬,precedes:<,extends:>
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Set color scheme
set background=dark
let g:solarized_termcolors=256
"colorscheme evening
colorscheme solarized

let mapleader = " "

filetype plugin indent on
syntax on
"set clipboard=unnamedplus

" Search settings
set hlsearch
set ignorecase
set incsearch
set smartcase
set magic



" Mappings

map <C-n> :NERDTreeToggle<CR>

inoremap jk <ESC>

let mapleader = " "

" write file and build
nmap <leader>b :w<CR>:!latexmk -pdf %<CR>
nmap <leader>v :!latexmk -pdf -pv %<CR>

" quick switch to previous buffer
nmap <leader><space> :buf #<CR>

" Settings for Latex-Suite (vim-latex)
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='latexmk -pdf -synctex=1 -interaction=nonstopmode $*'
" from https://github.com/lervag/vimtex/issues/75
let g:latex_viewer='SumatraPDF -reuse-instance -inverse-search '.
            \ '"gvim --servername '.v:servername.' --remote-send \"^<C-\^>^<C-n^>'.
            \ ':drop \%f^<CR^>:\%l^<CR^>:normal\! zzzv^<CR^>'.
            \ ':call remote_foreground('''.v:servername.''')^<CR^>\""'

