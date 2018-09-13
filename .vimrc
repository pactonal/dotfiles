execute pathogen#infect()
set is
colorscheme chaotic
syntax enable
set expandtab
set tabstop=4
set softtabstop=-1
set shiftwidth=0
set number
set showcmd
filetype indent on
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
let g:airline_powerline_fonts = 1
let g:airline_theme = "wombat"
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:AutoPairsUseInsertedCount = 1


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_checkers_c = ['gcc', 'make', 'clang_check']
