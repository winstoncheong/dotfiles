"fakesection Plugins Loading
if has('win32') || has('win64')
  let g:plugged_home = '~/AppData/Local/nvim/plugged'
else
  let g:plugged_home = '~/.vim/plugged'
endif
" Plugins List
call plug#begin(g:plugged_home)
    " UI related
    Plug 'chriskempson/base16-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
	Plug 'joshdick/onedark.vim'
	"Plug 'iCyMind/NeoSolarized'
    Plug 'altercation/vim-colors-solarized'
    
    " Session management
    Plug 'tpope/vim-obsession'

    " Better Visual Guide
    Plug 'Yggdroot/indentLine'

    " syntax check
    Plug 'w0rp/ale'

    " Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"

    " Formatter
    Plug 'Chiel92/vim-autoformat'
  
    " --------- adding the following three plugins for Latex ---------
    Plug 'lervag/vimtex'
    Plug 'Konfekt/FastFold'
    Plug 'matze/vim-tex-fold'

    " Common plugins
    Plug 'preservim/nerdcommenter'
    Plug 'preservim/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
filetype plugin indent on

"fakesection Configurations Part

" UI configuration
syntax on
syntax enable

" colorscheme
let base16colorspace=256
"colorscheme base16-gruvbox-dark-hard
colorscheme onedark
set background=dark
"colorscheme solarized

" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif
set number
set relativenumber
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw

" Turn off backup
set nobackup
set noswapfile
set nowritebackup

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set tabstop=2
set shiftwidth=2

" Line wrapping
set wrap linebreak

" vim-autoformat
noremap <F3> :Autoformat<CR>

" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}

" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

" Vimtex
let g:tex_flavor  = 'latex'
let g:vimtex_syntax_conceal = {
            \ 'accents': 0,
            \ 'cites': 0,
            \ 'fancy': 0,
            \ 'greek': 0,
            \ 'math_bounds': 0,
            \ 'math_delimiters': 0,
            \ 'math_fracs': 0,
            \ 'math_super_sub': 0,
            \ 'math_symbols': 0,
            \ 'sections': 0,
            \ 'styles': 0,
            \}
let g:vimtex_fold_manual = 1
let g:vimtex_compiler_progname = 'nvr'

" Settings for sumatraPDF
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
"let g:vimtex_view_general_options_latexmk = '-reuse-instance'

"fakesection Mappings
map <C-n> :NERDTreeToggle<CR>
let mapleader = " "

" Open neovim dotfile
nmap <leader>e. :e ~\AppData\Local\nvim\init.vim<CR>

" Exit terminal-mode
tnoremap <Esc> <C-\><C-n>

