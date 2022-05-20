filetype plugin indent on

" --- General Settings ---
set nu rnu
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set backspace=indent,eol,start
set showcmd
set incsearch
set hlsearch
set splitright
set splitbelow

syntax enable


call plug#begin('C:\Users\david\AppData\Local\nvim-data\plugged')

Plug 'http://github.com/tpope/vim-surround'
Plug 'http://github.com/vim-airline/vim-airline'
Plug 'http://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' } |
			\ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
"Plug 'flazz/vim-colorschemes'
Plug 'ful1e5/onedark.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
Plug 'lervag/vimtex'
Plug 'matze/vim-move'

call plug#end()

" Colorscheme
colorscheme onedark

" custom variables
let g:airline_theme='deus'

" Vimtex
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = 'file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options = 'file:@pdf'
let g:vimtex_view_forward_search_on_start = 0

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Custom keybinds
nmap <F5> :w <bar> source %<CR>

" Copy to clipboard
nnoremap <leader>y "+y

" Paste from clipboard
nnoremap <leader>p "+p

" Move splits around
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>



