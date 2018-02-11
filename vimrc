" Package management
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'ayu-theme/ayu-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

filetype plugin indent on

" Color settings
set termguicolors
let ayucolor="mirage"
colorscheme ayu
let g:airline_theme='ayu_mirage'
syntax on

" Line numbers
set relativenumber
set number

" Highlight current line
set cursorline

" SUDO Override hack
cmap w! w !sudo tee > /dev/null %

" Airline settings
let g:airline_powerline_fonts = 1

" Fuzzy finder
set path+=**
set wildmenu

" In file search option
set incsearch
set ignorecase

" Tabulators
set expandtab
set shiftwidth=4
set softtabstop=4

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Reset cursor shape due to zsh vi mode indicator
silent exec "!echo '\e[1 q'"
