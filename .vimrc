" vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'chriskempson/base16-vim'
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
Bundle 'taq/vim-rspec'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-classpath'
Bundle 'vim-scripts/VimClojure'
Bundle 'tpope/vim-fireplace'
Bundle 'othree/html5.vim'

filetype plugin indent on     " required!

" standard configuration

set encoding=utf-8

syntax enable
colorscheme base16-bright

let g:vimclojure#ParenRainbow=1

set tabstop=2
set shiftwidth=2
set expandtab

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

"" Removes trailing spaces
"" function! TrimWhiteSpace()
""   %s/\s\+$//e
"" endfunction
"" autocmd FileWritePre    * :call TrimWhiteSpace()
"" autocmd FileAppendPre   * :call TrimWhiteSpace()
"" autocmd FilterWritePre  * :call TrimWhiteSpace()
"" autocmd BufWritePre     * :call TrimWhiteSpace()
