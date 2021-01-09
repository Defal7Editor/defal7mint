syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hidden

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'nanotech/jellybeans.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

colorscheme jellybeans
set background=dark 

let mapleader = " "
let g:netrw_brwose_split=2
let g:netrw_banner= 0
let g:netrw_winsize= 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 40<CR>
nmap <C-f> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree

