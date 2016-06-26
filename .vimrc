syntax on
set backspace=indent,eol,start
set number
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark
set incsearch
set autoindent

set shell=/bin/sh

"underlines the current line
set cul

" Useful mappings
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"Open NERDTree on startup
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"Download plugins auto
call plug#begin('~/.vim/plugged')

"Seamless vim-tmux pane navigator
Plug 'christoomey/vim-tmux-navigator'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'lervag/vimtex'

"Colors
Plug 'w0ng/vim-hybrid'
Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'

call plug#end()
