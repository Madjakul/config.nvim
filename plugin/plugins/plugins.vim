call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Vim status bar theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Autoclose pairs of "", [], {}, and more
Plug 'jiangmiao/auto-pairs'
" Python formatter
Plug 'sbdchd/neoformat'
" Auto formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
" Directory tree
Plug 'scrooloose/nerdtree'
" Directory tree highlighter
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" C++ linter
Plug 'neomake/neomake'
" Multiple selection
Plug 'terryma/vim-multiple-cursors'
" Copy/past highlighter
Plug 'machakann/vim-highlightedyank'
" Python auto folder
Plug 'tmhedberg/SimpylFold'
" Vim theme
Plug 'morhetz/gruvbox'
" Commenting with variations on gcc
Plug 'tpope/vim-commentary'
" Surrounding things
Plug 'tpope/vim-surround'
" Awesome git wrapper
Plug 'tpope/vim-fugitive'
" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'
" Ident lines
Plug 'Yggdroot/indentLine'
call plug#end()

" Coloscheme
colorscheme gruvbox
