execute pathogen#infect()
set is
autocmd BufNewFile,BufRead *.py set cc=80
autocmd BufNewFile,BufRead *.pyw set cc=80
autocmd BufNewFile,BufRead *.c set cc=81
set clipboard=unnamedplus
set background=dark
colorscheme gruvbox
syntax enable
set expandtab
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set number
set showcmd
filetype plugin indent on
set wildmenu
set relativenumber
set ignorecase
set smartcase
set lazyredraw
set backspace=indent,eol,start
set autoindent
set ruler
set cmdheight=2
set t_Co=256
set timeoutlen=1000 
set ttimeoutlen=0
set completeopt=menu
set completeopt-=preview


let g:AutoPairsUseInsertedCount = 1

let g:airline_powerline_fonts = 1
let g:airline_theme = "gruvbox"
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_skip_empty_sections = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_checkers_c = ['gcc', 'make', 'clang_check', 'oclint', 'clang',]
let g:syntastic_python_checkers = ['python', 'pep8', 'pyflakes'] 

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0

let g:indentLine_char = '⎸' 

let g:completor_python_binary = '/usr/bin/python'
let g:completor_clang_binary = '/usr/bin/clang'
