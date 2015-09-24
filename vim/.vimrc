""""""""""""""""""""""VUNDLE PLUGIN""""""""""""""""""""

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'
Bundle 'kien/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end() 
filetype plugin indent on

" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" " auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"
"
""""""""""""""""""""""BASE CONFIG"""""""""""""""""""""""
set encoding=utf-8

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line 
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" move vertically by visual line
nnoremap j gj
nnoremap k gk

let mapleader=","       " leader is comma


" enable all Python syntax highlighting features
let python_highlight_all = 1

" Excess line length
augroup vimrc_autocmds
   autocmd!
   " highlight characters past column 80
   autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Red
   autocmd FileType python match Excess /\%80v.*/
   autocmd FileType python set nowrap
   augroup END

" Plugin Config "

" NerdTree Config
" Tab to open/close NERDTree
map <Tab> :NERDTreeToggle<CR>
" Automatically open NERDTree with vim
autocmd vimenter * NERDTree
" Close vim if only NERDTree open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
