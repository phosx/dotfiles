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
 Plugin 'Yggdroot/indentLine'
call vundle#end() 

filetype plugin indent on 


let mapleader = ","
set shell=bash
syntax enable 

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
highlight Normal ctermbg=NONE " Set bg to terminal default
highlight nonText ctermbg=NONE " Set bg to terminal default

"set term=builtin_ansi


set t_Co=256
set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set foldmethod=syntax
set foldlevelstart=20
set gdefault
set guifont=Inconsolata\ 10.5
set guioptions-=Be
set guioptions=aAc
"set history=700
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:▸\ ,eol:¬,nbsp:.,trail:⋅,
set noswapfile
set number
set shell=/bin/bash
set showmatch
set smartcase
"set smartindent
set term=screen-256color
set ts=2 sts=2 sw=2 expandtab
set visualbell
   
set winheight=999
set winheight=5
set winminheight=5
set winwidth=84

" Normal mode mappings {{{
  map 0 ^
  nnoremap <leader>b :CtrlPBuffer<CR>
  nnoremap <C-s> :w<CR>
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
  nnoremap <S-Enter> O<Esc>
  nnoremap <CR> o<Esc>

  nnoremap <leader><Left> <C-W>h
  nnoremap <leader><Right> <C-W>l
  nnoremap <leader><Up> <C-W>k
  nnoremap <leader><Down> <C-W>j

  nnoremap <F3> :set hlsearch!<CR>
  
  nnoremap <space> <C-d>
  nnoremap <leader><space> <C-u>
  nnoremap <leader>a ggVG

  autocmd FileType nerdtree nmap <buffer> c go
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

    "ctrl-p
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache

    let g:NERDTreeWinSize=31
    let NERDTreeAutoDeleteBuffer=1
" }}}
