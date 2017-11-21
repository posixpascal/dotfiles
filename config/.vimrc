set shell=/bin/bash
set nocompatible              " be iMproved, red
set backspace=2
syntax on
filetype off                  " required
set hidden



" VUNDLE
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'pangloss/vim-javascript'
Plugin 'majutsushi/tagbar'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'stanangeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'dracula/vim'

call vundle#end()            " required
filetype plugin indent on    " required
" VUNDLE END

" Airline
let g:airline#extensions#tabline#enable = 1

" NERDTree autostart
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-f> :FZF<CR>
nmap <C-g> :TagbarToggle<CR>
