syntax on
set backspace=indent,eol,start
set number
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark
set incsearch
set autoindent

"underlines the current line
set cul

" Useful mappings
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"Open NERDTree on startup
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Vim splits, easy navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Download plugins auto
call plug#begin('~/.vim/plugged')

"Seamless vim-tmux pane navigator
Plug 'christoomey/vim-tmux-navigator'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'lervag/vimtex'

call plug#end()
