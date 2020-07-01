" Plugins List
call plug#begin()
  " UI related
  Plug 'morhetz/gruvbox'
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mhinz/vim-startify'
  Plug 'powerline/powerline'
  Plug 'scrooloose/nerdtree'
  Plug 'Yggdroot/indentLine'
  Plug 'vim-scripts/auto-pairs-gentle'
  Plug 'numirias/semshi'
" Make sure you use single quotes ''
 
" autocompletion (also a linter - diagnostics)
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

" auto formatter
Plug 'rhysd/vim-clang-format'

" nerd tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" surround vim
Plug 'tpope/vim-surround'

" nerd commenter
Plug 'scrooloose/nerdcommenter'

" airline (powerline)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" enhanced highlight
Plug 'vim-syntastic/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shougo/vimproc.vim'

" glsl color
Plug 'tikhomirov/vim-glsl'
call plug#end()

" Change indentline character
let g:indentLine_char = '⎸' 

set undofile
set encoding=utf-8

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
      set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

colorscheme base16-material-palenight
set ignorecase
set is
set relativenumber
set ignorecase
set smartcase
set ruler
set cmdheight=2
set number
set conceallevel=1
set termguicolors
set background=dark
set hidden
set completeopt=longest,menuone
set expandtab
set autoindent
set shiftwidth=4
set softtabstop=4
set cinkeys-=:
set indentkeys-=:

set history=1000

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>


autocmd BufEnter * lcd %:p:h

filetype plugin indent on

let g:airline_powerline_fonts = 1

let g:syntastic_check_on_open=1

let g:syntastic_checkers_c = ['gcc', 'make', 'clang_check', 'oclint', 'clang',]
let g:syntastic_python_checkers = ['python3', 'pyflakes', 'pep8'] 

map <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

let g:AutoPairsUseInsertedCount = 1

let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_max_num_candidates = 20

let g:airline_theme='gruvbox'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" ################ Clang format #####################
 
" Clang format - auto formatting
 
let g:clang_format#command = 'clang-format-3.8'
let g:clang_format#code_style = 'google'

" shortcuts for autoformatting the entire file: Ctrl+j
inoremap <C-j> <Esc>:ClangFormat<CR>a
nnoremap <C-j> <Esc>:ClangFormat<CR>

let g:easytags_opts = ['--fields=+l']

" Semshi
let g:semshi#error_sign=v:false

set foldmethod=indent
set foldlevel=99

au BufRead,BufNewFile *.nginx set ft=nginx
au BufRead,BufNewFile */etc/nginx/* set ft=nginx
au BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
au BufRead,BufNewFile nginx.conf set ft=nginx

set mouse=n                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing

autocmd BufNewFile,BufRead *.py setlocal cc=80
autocmd BufNewFile,BufRead *.pyw setlocal cc=80
autocmd BufNewFile,BufRead *.c setlocal cc=81
autocmd BufNewFile,BufRead *.cpp setlocal cc=81
autocmd BufNewFile,BufRead *.c setlocal softtabstop=2
autocmd BufNewFile,BufRead *.c setlocal shiftwidth=2
"autocmd BufNewFile,BufRead *.cpp setlocal softtabstop=2
"autocmd BufNewFile,BufRead *.cpp setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.c setlocal ft=c
autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
