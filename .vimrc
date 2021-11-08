" This must go first
set nocompatible

" Plugins 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'lervag/vimtex'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'

call vundle#end()

filetype plugin indent on

" --- General settings --- 
set nu rnu
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch

set encoding=UTF-8
set shiftwidth=4
set tabstop=4

syntax on

" Run python
map <F5> <Esc>:w<CR>:w !python %<CR>

" NERDTree
nmap <silent> <leader>t :NERDTreeTabsToggle
let g:nerdtree_tabs_open_on_console_startup=1

nnoremap <C-t> :NERDTreeToggle<CR>

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END
