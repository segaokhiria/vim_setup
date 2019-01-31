" Needed so that backspace works properly
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Tags - make sure to 'brew install ctags' for this one
Plugin 'ludovicchabant/vim-gutentags'
" Git wrapper
Plugin 'tpope/vim-fugitive'
" Lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
" Vim plugin that displays tags in a window, ordered by scope
Plugin 'majutsushi/tagbar'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
" A Vim plugin which shows a git diff in the gutter
Plugin 'airblade/vim-gitgutter'
" Vim motions on speed!
Plugin 'easymotion/vim-easymotion'
" fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'
" Visual rep of indentations
Plugin 'nathanaelkane/vim-indent-guides'
" Auto complete
Plugin 'davidhalter/jedi-vim'
" Ack/Ag
Plugin 'mileszs/ack.vim'

" COLOR SCHEMES

" precision colorscheme for the vim text editor
"Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
:let mapleader = ","

" vim-colors-solarized config
syntax enable
"colorscheme solarized

" Tabs - should stop using tabs though
nnoremap H gT
nnoremap L gt

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" ctrlp most recently used buffer
nnoremap <C-p>b :CtrlPBuffer<CR>
" ctrlp buffer
nnoremap <C-p>m :CtrlPMRU<CR>

" Highlight all search items
:set hlsearch

" Toggle Nerdtree
nnoremap <space>n :NERDTreeToggle<CR>

" Always show line numbers
:set nu

" TODO(sega): Temporarily disable mouse until I figure out how to
"   copy with visual selection
:set mouse=""

" SEARCH
:let g:ackprg = "ag --vimgrep"
" Search current directory for word under cursor
nnoremap <space>f :Ack! <C-R><C-W> .<CR>
" Close quickfix window
nnoremap <space>ff :ccl<CR>

" Gutentags cache dir
let g:gutentags_cache_dir = "~/.vim/gutentags"

" Tagbar stuff
nnoremap <leader>tt :TagbarToggle<CR>

" (TRIAL)(sega): Jump to definition
map <silent> <leader>jd :CtrlPTag<cr><c-\>w

" Indentation stuff
:autocmd FileType * :set tabstop=2 expandtab smartindent shiftwidth=2 softtabstop=2
:autocmd FileType c,cpp :set tabstop=4 noexpandtab smartindent shiftwidth=4 softtabstop=4
:autocmd FileType ruby :set tabstop=2 expandtab smartindent shiftwidth=2 softtabstop=2
:autocmd FileType python :set tabstop=2 expandtab smartindent shiftwidth=2 softtabstop=2
