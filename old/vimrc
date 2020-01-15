" Vundle plugin setup -------------------------------------- {{{
set nocompatible " Required preamble for Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'vim-latex/vim-latex'
" Plugin 'lervag/vimtex'

Plugin 'tpope/vim-sleuth' " Look at current filetype, to adjust vim's tab spacing settings
"Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive' " Git integration
Plugin 'airblade/vim-gitgutter' " Shows a git diff in the 'gutter'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired' " pairs of handy bracket mappings. :e
Plugin 'tpope/vim-abolish' " Supports the operations of Abbreviation (Abolish), Substitute (Subvert) and Coercion
Plugin 'vim-scripts/ZoomWin' " Toggle between one window and multi-window

Plugin 'scrooloose/nerdcommenter' " Easy code commenting
Plugin 'scrooloose/syntastic' " Syntax checking

Plugin 'nelstrom/vim-markdown-folding' " Enables folding by section headings in markdown documents
Plugin 'tpope/vim-markdown'

" Plugin 'Valloric/YouCompleteMe' " Needs python
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar' " class outline viewer using ctags

" Snippets
Plugin 'honza/vim-snippets' "The snippets
Plugin 'SirVer/ultisnips' " The engine

Plugin 'ervandew/supertab' " Tab for insert completion

Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder

Plugin 'jceb/vim-orgmode' " Org-Mode implemented in vim. Needs python

Plugin 'edsono/vim-matchit' " Makes '%' match more.

Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'

Plugin 'christoomey/vim-tmux-navigator' "Seamless navigation between tmux panes and vim splits


" Color schemes
Plugin 'farseer90718/flattr.vim'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on
" }}}
" GENERAL SETTINGS {{{1
syntax on
set number
set autoread
set confirm
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set scrolloff=1
set sidescrolloff=5
set display+=lastline
set encoding=utf-8
set t_Co=256

" Folding {{{2
set foldenable
"set foldminlines=10
" }}}2
" Whitespace {{{2

" Tabbing settings
set ts=4 sts=4 sw=4 noex 
set smarttab
set shiftround

set autoindent 
set smartindent
set list
set listchars=tab:▸\ ,eol:¬,precedes:<,extends:>
" }}}2
" Searching {{{2
set hlsearch incsearch
set ignorecase smartcase
set magic
" }}}2


set wildmenu " for command-line completion
set wildmode=list:longest,full " specifies how command line completion works

set history=1000

" Appearance {{{2
set showcmd
set ruler
set laststatus=2
set statusline=%F%m%r%h%w\ " fullpath and status modified sign
"set cursorline
"}}}2

" Persistent undo
if has('persistent_undo')
  set undodir=$HOME/Dropbox/undodir
  set undofile
  set undolevels=500
  set undoreload=5000
endif

" }}}1
" AUTOCOMMANDS {{{1

" save on focus lost
autocmd FocusLost * :wall

" Remove unwanted spaces on write
autocmd FileType c,cpp,java,php,tex autocmd BufWritePre <buffer> :%s/\s\+$//e

" Adjust tabsize appearance for files
autocmd FileType eruby,html,vim,ruby,css,javascript setlocal tabstop=2 shiftwidth=2

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Source the vimrc file after saving it
autocmd bufwritepost .vimrc source $MYVIMRC 

" Vimscript file settings -------------------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" }}}1
" FUNCTIONS {{{1
function! MoveBlockDown()
    execute ":silent! \'<, \'>move .+1"
endfunction
" }}}1
" MAPPINGS {{{1
nmap <F2> :PluginInstall<CR>
nmap <F3> :PluginUpdate<CR>
nmap <leader>v :split $MYVIMRC<CR>

nnoremap <leader>h :nohlsearch<CR>
nmap <leader>sr :set splitright<CR>
nmap <leader>sb :set splitbelow<CR>
set pastetoggle=<leader>p

" move line up or down
nnoremap <C-j> :move .+1<CR>
nnoremap <C-k> :move .-2<CR>
vnoremap <C-k> :move .-2<CR>gv
vnoremap <C-j> :call MoveBlockDown()<CR>gv


noremap <C-n> :NERDTreeToggle<CR>

" Folding {{{

set foldlevelstart=0

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" "Refocus" folds
nnoremap ,z zMzvzz

" Make zO recursively open whatever top level fold we're in, no matter where
" the cursor happens to be.
nnoremap zO zCzO
"}}}

"}}}1
" Plugin configuration {{{1
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Enables fenced code block syntax highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Following syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" }}}1
