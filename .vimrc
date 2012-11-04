" vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/ctrlp.vim'
Bundle 'vim-coffee-script'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'nono/vim-handlebars'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'taq/vim-rspec'
Bundle 'cakebaker/scss-syntax'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/VimClojure'
Bundle 'othree/html5.vim'

filetype plugin indent on     " required!

" standard configuration

set encoding=utf-8

syntax enable
let g:solarized_termtrans = 1
colorscheme solarized

let g:vimclojure#ParenRainbow=1

set tabstop=2
set shiftwidth=2
set expandtab

set ignorecase
set smartcase
set incsearch
set hlsearch

set number

set laststatus=2

set directory=/tmp

" let g:ctrlp_map = '<c-p>'
map <C-t> :CtrlP<CR>

" custom hacks

map <M> <Esc>
map Esc to jj
imap jj <Esc>
