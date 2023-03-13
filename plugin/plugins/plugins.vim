call plug#begin('~/.local/share/nvim/plugged')

" Plug 'davidhalter/jedi-vim'
" Autocomplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
" Plug 'zchee/deoplete-clang'
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
" Copy/past highlighter
Plug 'machakann/vim-highlightedyank'
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
" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
" NERDTree icons
Plug 'ryanoasis/vim-devicons'
set encoding=UTF-8
" LSP Support
Plug 'neovim/nvim-lspconfig'             " Required
Plug 'williamboman/mason.nvim'           " Optional
Plug 'williamboman/mason-lspconfig.nvim' " Optional
" Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'         " Required
Plug 'hrsh7th/cmp-nvim-lsp'     " Required
Plug 'hrsh7th/cmp-buffer'       " Optional
Plug 'hrsh7th/cmp-path'         " Optional
Plug 'saadparwaiz1/cmp_luasnip' " Optional
Plug 'hrsh7th/cmp-nvim-lua'     " Optional
"  Snippets
Plug 'L3MON4D3/LuaSnip'             " Required
Plug 'rafamadriz/friendly-snippets' " Optional

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}
call plug#end()

" Coloscheme
colorscheme gruvbox

