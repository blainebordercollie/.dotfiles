" Package Management
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
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

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='ayu_mirage'

" Fuzzy finder
set path+=**
set wildmenu

" Tabulators
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" List chars
set list
set listchars=tab:\│\ ,trail:-,extends:>,precedes:<,nbsp:+

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
