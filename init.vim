" Specify a directory for plugins
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'

call plug#end()

" Plugins configuration
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:airline_theme='minimalist' 

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

"_____ General configuration _____"
set splitbelow
set syntax
set nu rnu
set ruler
set showcmd
set incsearch
set hlsearch

set encoding=utf-8
set shiftwidth=4
set tabstop=4

set expandtab

syntax on

"_____ ReMap _____"
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"_____ Programming Language config _____"
"_____ Python
autocmd FileType python nnoremap <buffer> <F5> :update<bar>!python %<CR>

