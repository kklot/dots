syntax on
set splitright
set splitbelow
set autoread
colorscheme solarized
hi Normal guibg=NONE ctermbg=NONE
hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
hi TabLine ctermfg=Blue ctermbg=Yellow
hi TabLineSel ctermfg=Red ctermbg=Yellow
hi VertSplit guibg=NONE ctermbg=NONE
hi GitGutterAdd ctermbg=NONE
hi GitGutterChange ctermbg=NONE
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
" Nvim-R stuffs
let R_debug=0
let maplocalleader = ' '
noremap <F2> <Esc>:ls <Enter>:b 
noremap <F5> <Esc>:e %<Enter>
noremap <Backspace> <Esc>kJi
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
inoremap <C-v> <C-r>"
inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap ' ''<Esc>ha
inoremap " ""<Esc>ha
autocmd FileType md nnoremap <buffer>  ai
autocmd BufRead *.* set path+=
autocmd FileType r inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType rnoweb inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
autocmd FileType rmd inoremap <buffer> >> <Esc>:normal! a %>%<CR>a 
let R_in_buffer=0
let R_assign=2 "type twice to replace R's assignment symbols, not one
nnoremap <LocalLeader>sc :RSend 
nnoremap <LocalLeader>aw yiw:RSend "<CR>
nnoremap <LocalLeader>ib yib:RSend "<CR>
nnoremap <LocalLeader>q :RSend Q<CR>
nnoremap <LocalLeader>gp yiw:RSend plot(")<CR>
nnoremap <LocalLeader>gm yiw:RSend matplot(", type='l')<CR>
nnoremap <LocalLeader>gi yiw:RSend image(")<CR>
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

function! OpenInTab()
	let curpos = getpos('.')
	tabedit %
	call cursor(curpos[1], curpos[2])
endfunction
nnoremap <LocalLeader>z :call OpenInTab()<Enter>

" Snippets
let R_rmdchunk = 0
iabbrev rchunk ```{r}<CR>```<Esc>O
iabbrev imagechunk ```{r include=FALSE}<CR>```<Esc>O
iabbrev tablechunk ```{r include=FALSE, results="asis"}<CR>```<Esc>O
iabbrev silentchunk ```{r include=FALSE, message=FALSE, warning=FALSE}<CR>```<Esc>O
iabbrev splitchunk ```<CR>```{r}<Esc>O<Esc>o
iabbrev gg <Esc>oggplot() +<CR>geom_line(aes(x))<Esc>Fxcib
