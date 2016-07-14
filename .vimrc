syntax on
set backspace=indent,eol,start
set number
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark
set incsearch
set autoindent
"<Leader> is mapped to "\" by default

"Powerline configs
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
"set laststatus=2
" Use 256 colours
"set t_Co=256

"Remove preview window in python
set completeopt-=preview

"Disable omnifunc
set omnifunc=''

set shell=/bin/sh

"underlines the current line
set cul

" Useful mappings
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

let g:NERDTreeWinSize= 35
let g:Tlist_WinWidth = 45
let Tlist_Use_Right_Window   = 1

"Explorer toggles
map <F11> :TlistToggle<cr>
map <F10> :NERDTreeToggle<CR>

"Open NERDTree on startup
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

"Set vim to recognize *.md files as markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

let g:pymode_rope=0

"Download plugins auto
call plug#begin('~/.vim/plugged')

"Seamless vim-tmux pane navigator
"Note: this doesn't actually work?
Plug 'christoomey/vim-tmux-navigator'

"NERDTree graphical file navigator
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

"Vim for TeX
Plug 'lervag/vimtex', { 'for': 'latex' }

"Emmet for Vim
Plug 'mattn/emmet-vim'

"vim for jinja
Plug 'mitsuhiko/vim-jinja', { 'for': 'htmljinja' }

"Support for matching tags in HTML and Latex
Plug 'tmhedberg/matchit'

"Alternate between files quickly (eg: header and source files)
Plug 'vim-scripts/a.vim', { 'for': ['cpp','c'] }

"Allows efficient browsing of source code
Plug 'vim-scripts/taglist.vim'

"Display c/c++ function declarations in vim command line.
"Type '(' after the function name
Plug 'mbbill/echofunc', { 'for': ['cpp','c'] }

"Auto-complete of commonly used code snippets (eg: for loops in C/C++)
"Hover over and press <Tab>
"Plug 'garbas/vim-snipmate'

"Extension of snipmate, has context completion, etc
"Plug 'ervandew/supertab'

"vimwiki - efficiency and productivity plugin for vim. Has todolists, diaries,
"can export to HTML, etc.
"Quickstart with \ww. See README for markup syntax.
Plug 'vimwiki/vimwiki'

"vim autocompletion
"Press <TAB> to cycle through suggestions.
"Takes too long to load
"Plug 'Valloric/YouCompleteMe'

"UltiSnips, competitor to SnipMates - has more downloads and is supposedly
"better
"Takes too long to load
"Plug 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
"Plug 'honza/vim-snippets'

"git wrapper for vim
"See README for usage instructions
Plug 'tpope/vim-fugitive'

"Syntax checker for vim
"Takes too long to load
"Plug 'scrooloose/syntastic'

"Fuzzy path finder for vim
"Plug 'ctrlpvim/ctrlp.vim'

"Search and display info from arbitrary sources (files, buffers, registers,
"recently used files)
"usage:
"   :Unite file buffer (or) :Unite file (or) :Unite -input=foo file, where
"   -input is the str to search for.
"See README for more usage info.
"Use FZF instead
"Plug 'shougo/unite.vim'

"Ease of commenting for vim. Supports many different filetypes.
"See README for usage.
Plug 'scrooloose/nerdcommenter'

"Efficiency of motion commands
"<Leader><Leader>[motion]
Plug 'easymotion/vim-easymotion'

"Execute and highlight URLs in vim
Plug 'vim-scripts/utl.vim'

"Previews colours in source code while editing
Plug 'skammer/vim-css-color'

"Displays undo branches
Plug 'sjl/gundo.vim'

"Shows git diff in the gutter (sign column)
Plug 'airblade/vim-gitgutter'

"Easy alignment of text
":help tabular for usage
Plug 'godlygeek/tabular'

"Markdown support
Plug 'plasticboy/vim-markdown', { 'for': ['markdown'] }

"Indent guides
"Default toggle: <Leader>ig
Plug 'nathanaelkane/vim-indent-guides'

"Autocomplete for python
"Read README for usage.
"Automatically initialised.
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

"Plugin for python productivity and speed
Plug 'klen/python-mode', { 'branch': 'develop' }

"Status line for vim. Much easier to install than powerline.
Plug 'vim-airline/vim-airline'

"Multiple cursors
"Uses <C-n>
"See README for more options
Plug 'terryma/vim-multiple-cursors'

"Colours
"Plug 'w0ng/vim-hybrid'
"Plug 'sickill/vim-monokai'
"Plug 'morhetz/gruvbox'
"Plug 'tomasr/molokai'
"Plug 'altercation/vim-colors-solarized'

"Collected colour sampler pack - over 100 colours.
"Plug 'vim-scripts/Colour-Sampler-Pack'

"collected colour schemes
Plug 'flazz/vim-colorschemes'

call plug#end()

"Airline configs
let g:airline_powerline_fonts=1

"UltiSnips Configs
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="+"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
