" plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeFind', 'NERDTreeToggle'] }
Plug 'bakpakin/fennel.vim'
Plug 'flazz/vim-colorschemes'
call plug#end()

" leader
let mapleader = ","

" select-all type thing when hitting <c-a>
nmap <c-a> ggvG$

" insert line below without having to be in insert mode
nmap <c-j> o<c-[>

" insert line above without having to be in insert mode
nmap <c-k> O<c-[>

" toggle NERDTree w/ current file's directory
nmap ,n :NERDTreeFind<CR>

" <tab> to switch between windows
nmap <tab> <c-w>w

" <alt-arrow> to switch between windows
nmap <a-up> :wincmd k<CR>
nmap <a-down> :wincmd j<CR>
nmap <a-left> :wincmd h<CR>
nmap <a-right> :wincmd l<CR>

" copy/paste actions use system clipboard (windows)
" set clipboard=unnamed

" copy/paste actions use system clipboard (linux)
set clipboard=unnamedplus

" convert tabs to spaces
set expandtab

" 'width' in spaces of a tab
"set tabstop=5

" colorscheme
colorscheme Tomorrow-Night-Eighties

" blinking cursor (because the iterm5 attributes doesn't stick?)
set guicursor+=a:blinkon1

" line numbers
set number

" open NERDTree when opening a directory with vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTreeToggle '.argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

