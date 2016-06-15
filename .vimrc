" -------------
" Plugin config
" -------------

set nocompatible              " required
filetype off                  " required

set rtp+=~/dotfiles/vundle
call vundle#begin()

" All plugins go here
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on


" ---------------
" Personal config
" ---------------

syntax enable
set hidden
set history=100
set number
set ruler
set fileformat=unix
set encoding=utf-8
set nobackup noswapfile nowritebackup
set autoread
set relativenumber

" Use tabs, 1 tab = 4 spaces
set tabstop=4 softtabstop=0 shiftwidth=4 smarttab
set autoindent smartindent

" Use ; and , rather than : and \
nnoremap ; :
let mapleader=","

" Use w!! for sudo save after opening
cmap w!! w !sudo tee % >/dev/null

" Make switching between windows easier
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" CtrlP Config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

" Go-specific config
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>gd <Plug>(go-doc)
