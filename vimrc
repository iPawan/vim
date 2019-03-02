" Basic setup for vim 
" -- Pawan 07/28/2018
" -- Updated 02/27/2019
"
" No compatiblity with classic vi
set nocompatible
set timeoutlen=5000 ttimeoutlen=100
set nobackup
set nowritebackup
set noswapfile
set showcmd
set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
" auto load the changed file
set autoread
set autowrite
set scrolloff=3
set showmatch
set cmdheight=1
set cursorline

set modeline
set modelines=3
" FINDING FILES
" Search down in sub-directories
" provides tab-completion for all file related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" ignore folders you don't want to search in
set wildignore+=*/node_modules/**

" Set my split preference
set splitbelow
set splitright
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999

set backspace=indent,eol,start
set t_Co=256
" enable sytanx, indentation and plugins
syntax enable
filetype plugin on
filetype plugin indent on

" Plugin management
 
if filereadable(expand("~/.vimrc.bundle"))
  source ~/.vimrc.bundle
endif
" Set colorscheme
colorscheme grb256
" Set my Leader key
let mapleader = "\<Space>"
nnoremap <leader>r :so ~/.vimrc<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>o :only<CR>
nnoremap <C-p> :CtrlP<CR>

" Indent line settings
"let g:indentLine_color_term = 239
"let g:indentLine_char = '|'

" switch between the last two files
nnoremap <leader><leader> <c-^>
nnoremap <leader>s :w<CR>
nnoremap <leader>; :


" Can't be bothered to understand ESC vs <c-c> in insert mode
imap <c-c> <esc>
inoremap jj <esc>
"status line
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set laststatus=2
"set showtabline=2

" Strong secret for secret files
set cm=blowfish2


" Auto Commands for templates
au bufnewfile *.sh 0r ~/.vim/templates/sh_header.tmp

" clear ruby comments
nnoremap <leader>cc :%s/\_s*#.*//g<cr>
nnoremap <leader>q :q<cr>

" repeat commands in visual mode 
vnoremap . :normal .<cr>
" keep visual selection when indenting
vnoremap < <gv
vnoremap > >gv
