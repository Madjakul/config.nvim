set encoding=utf-8

" Tabs
set tabstop=4 softtabstop=4 shiftwidth=4
set smarttab expandtab

" Indenting
set autoindent smartindent

" Improved Visual-Block mode
set virtualedit+=block
set virtualedit+=onemore

" General/Aesthetic
set tw=0
set wm=0
set nowrap
set linebreak
set number
set nornu
set cursorline
set ruler
set scrolloff=8 
set cmdheight=2
set visualbell
set updatetime=50
set showcmd

" Enable mouse
set mouse=a

set colorcolumn=89

set ls=2  "Always show status line"

augroup vimrc-remember-cursor-position
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Clipboard
set clipboard=unnamed

set langmap=([,)]
