:set number
:set relativenumber
:set tabstop=2
:set shiftwidth=2
:set autoindent
:set mouse=a
:set hlsearch
:set ignorecase

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/easymotion/vim-easymotion'

call plug#end()

let mapleader = " "

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

syntax on
colorscheme onedark
let g:airline_theme='onedark'

