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
nnoremap <C-t> :NERDTreeToggle<CR>

syntax on
colorscheme onedark
let g:airline_theme='onedark'


" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Highlight when yank
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=150})
augroup END

" Mapping key in split vim
map	<C-h> <C-w>h
map	<C-j> <C-w>j
map	<C-k> <C-w>k
map	<C-l> <C-w>l
