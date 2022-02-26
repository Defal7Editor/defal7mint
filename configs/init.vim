syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=2
"set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hidden

" show tabs
set list
set listchars=tab:>- 

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" --------------------- VimPlug -----------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'kitao/unity_dict'
" Plug 'morhetz/gruvbox'
Plug 'calviken/vim-gdscript3'
Plug 'joshdick/onedark.vim'
Plug 'miyakogi/seiya.vim'
Plug 'vim-airline/vim-airline'
" Plug 'lifepillar/vim-solarized8'

call plug#end()

colorscheme onedark
"set background=dark 

let mapleader = " "
let g:netrw_brwose_split=2
let g:netrw_banner= 0
let g:netrw_winsize= 25
" transparency
let g:seiya_auto_enable=1

let g:ctrlp_use_caching = 0

let g:airline#extensions#tabline#enabled = 1
nmap <C-n> :tabnext<CR>
nmap <C-b> :tabprevious<CR>
nmap <C-c> :tabnew<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 40<CR>
nmap <C-f> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree
