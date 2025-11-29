" simpliest vimrc

syntax on
filetype plugin indent on

runtime macros/matchit.vim

set nocompatible
set encoding=utf-8
set synmaxcol=1024

set autoindent
set expandtab
set shiftwidth=4
set tabstop=4

set wildmenu

set mouse=a

set ignorecase
set smartcase
set hlsearch
set incsearch

set numberwidth=4
set rnu

set t_Co=256
colorscheme habamax " | retrobox | sorbet
set termguicolors
" colorscheme quiet > for plain text
" colorscheme torte > for transparent bg

set splitbelow
set splitright
set whichwrap+=<>[]hl

set cursorline
set cursorlineopt=number

highlight EndOfBuffer ctermfg=black ctermbg=black
