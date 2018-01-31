" Package management
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'ayu-theme/ayu-vim'
call vundle#end()

filetype plugin indent on

" Color settings
set termguicolors
let ayucolor="mirage"
colorscheme ayu

" Line numbers
set relativenumber
set number

" Highlight current line
set cursorline

" Powerline
set rtp+=~/.local/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2

" Fuzzy finder
set path+=**
set wildmenu

" In file search option
set incsearch
set ignorecase

" Tabulators
set expandtab
set shiftwidth=2
set softtabstop=2

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
