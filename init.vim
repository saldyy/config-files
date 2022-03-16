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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jceb/vim-orgmode'

call plug#end()

let mapleader = " "
nnoremap <C-t> :NERDTreeToggle<CR>

syntax on
colorscheme onedark
let g:airline_theme='onedark'


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

" Disable h l 
map h <Nop>
map l <Nop>

"Mapping ripgrep 
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-f> :Rg<CR>

" Keeping it center
nnoremap n nzzzV
nnoremap N NzzzV
nnoremap J mzJ`z

" Undo break point
inoremap , ,<c-g>u
inoremap . .<c-g>u

" Auto close bracket
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>


" Cocvim setting
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" Format prettier in range
vmap <C-k><C-f>  <Plug>(coc-format-selected)
nmap <C-k><C-f>  <Plug>(coc-format-selected)
