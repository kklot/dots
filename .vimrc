colorscheme monokai
hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
hi TabLine ctermfg=Blue ctermbg=Yellow
hi TabLineSel ctermfg=Red ctermbg=Yellow
set background=dark
set tags=~/tags
set number relativenumber
set tabstop=2
set shiftwidth=2
set foldenable
set foldmethod=indent
set nowrap
set autoindent
set incsearch
set hlsearch
set autochdir
set hidden " switch buffer without save
set rtp+=/usr/local/opt/fzf
let maplocalleader = ' '
noremap <F2> <Esc>:ls <Enter>:b
noremap <F5> <Esc>:e %<Enter>
noremap <Backspace> <Esc>kJi
inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap ' ''<Esc>ha
inoremap " ""<Esc>ha
autocmd FileType md nnoremap <buffer> 
autocmd BufRead *.* set path+=
autocmd FileType r inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType rnoweb inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType rmd inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
syntax on
let R_in_buffer=0
let R_assign=2 "type twice to replace R's assignment symbols, not one
nmap <LocalLeader>: :RSend 
nmap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
call plug#begin('~/.vim/plugged')
Plug 'jalvesaq/nvim-r'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'godlygeek/tabular'
call plug#end()
