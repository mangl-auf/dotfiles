" simpliest vimrc

set nocompatible
set encoding=utf-8
syntax on
set synmaxcol=1024

set autoindent
set smartindent
set expandtab

set shiftwidth=4
set tabstop=4

set mouse=a

set ignorecase
set smartcase
set hlsearch

set numberwidth=4
set rnu

set t_Co=256
colorscheme habamax
set termguicolors
" colorscheme quiet | retrobox

set splitbelow
set splitright
set whichwrap+=<>[]hl

set cursorline
set cursorlineopt=number

highlight EndOfBuffer ctermfg=black ctermbg=black
