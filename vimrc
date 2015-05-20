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
 Plugin 'bling/vim-airline'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'SirVer/ultisnips'
 Plugin 'honza/vim-snippets'
 Plugin 'mattn/emmet-vim'
call vundle#end() 

filetype plugin indent on 



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

"colorscheme zenburn
colorscheme molokai
"set background=dark
set t_Co=256

let g:molokai_original = 1
let g:rehash256 = 1

"highlight Comment ctermfg=LightGray
highlight Normal ctermbg=NONE " Set bg to terminal default
highlight nonText ctermbg=NONE " Set bg to terminal default








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

map 0 ^

"from josemota dotfiles
" Normal mode mappings {{{
  nnoremap <leader>b :CtrlPBuffer<CR>
  " nnoremap <C-s> :w<CR>
  " nnoremap <leader>ev :vs $MYVIMRC<CR>
  " nnoremap <leader>gs :Gstatus<CR><C-W>15+
  nnoremap <leader>m :NERDTreeToggle<CR>
  " nnoremap <leader>rs :!clear;bundle exec rake<CR>
  " nnoremap <leader>a :Ack 
  " nnoremap <leader>d :bd<CR> 
  nnoremap <leader>w :w<CR>
  " nnoremap <leader><cr> :noh<CR>
  " nnoremap <leader>l :ls<CR>:b
  nnoremap <leader>t :CtrlP<CR>
  " nnoremap n nzz
  " nnoremap N Nzz
  nnoremap <leader>s :source ~/.vimrc<CR>
  nnoremap <leader>/ gcc
  nnoremap <leader>p :r!pbpaste<cr>
" }}}



" Plugin Config {{{

  " UltiSnips Config
    let g:UltiSnipsExpandTrigger="<tab>"
    "let g:UltiSnipsJumpForwardTrigger="<c-b>"
    "let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"

  "emmet
    let g:user_emmet_leader_key='<C-Z>'



" }}}
