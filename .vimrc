" simpliest vimrc

set nocompatible
set encoding=utf-8
syntax on
set synmaxcol=1024

set autoindent
set smartindent

set shiftwidth=4
set tabstop=4

set ignorecase
set smartcase
set hlsearch

set rnu

set t_Co=88
colorscheme desert

highlight EndOfBuffer ctermfg=black ctermbg=black

" if vim is manpager, then pressing on q will quit vim
" otherwise q works as usual (write marco)
nnoremap <expr> q &ma ? "q" : ":q\<CR>"
