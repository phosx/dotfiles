set nocompatible



filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 Plugin 'gmarik/Vundle.vim'
 Plugin 'kien/ctrlp.vim'
 Plugin 'scrooloose/nerdtree'
 Plugin 'terryma/vim-multiple-cursors'
 Plugin 'tpope/vim-commentary'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'tpope/vim-surround'
call vundle#end() 

filetype plugin indent on 


"execute pathogen#infect()



syntax enable 
set number

set term=builtin_ansi
set backspace=indent,eol,start

set ignorecase
set hlsearch
set autoindent
set fileencoding=utf-8
set encoding=utf-8

set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
" set expandtab tabstop=2 shiftwidth=2 sts=2

set smartindent
set history=700

set smartcase
set gdefault
set incsearch
set showmatch


set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

set visualbell
set cursorline

"colorscheme desert

"syntax on
"let g:solarized_termtrans = 1
"colorscheme solarized

colorscheme zenburn
set background=dark
set t_Co=256




set foldmethod=syntax
set foldlevelstart=20

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML





let mapleader = ","

