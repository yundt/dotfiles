" vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/Tibet'
Bundle 'vim-scripts/ctrlp.vim'
Bundle 'vim-coffee-script'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'nono/vim-handlebars'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'
Bundle 'othree/html5.vim'
Bundle 'ekalinin/Dockerfile.vim'

Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'vim-scripts/paredit.vim'

filetype plugin indent on     " required!

" standard configuration

set encoding=utf-8

syntax enable
let g:solarized_termtrans = 1
set background=light
colorscheme solarized

let g:rbpt_colorpairs = [
  \ [ '13', '#6c71c4'],
  \ [ '5',  '#d33682'],
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '3',  '#b58900'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ '4',  '#268bd2'],
  \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set tabstop=2
set shiftwidth=2
set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set smartcase
set incsearch
set hlsearch

set number

set laststatus=2

set directory=/tmp

nnoremap <leader>r :!touch .gitignore<CR><CR>
