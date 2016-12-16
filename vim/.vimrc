"""""""""""""""
""  Base Config 

" Set encoding
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

" Cycle buffers with Ctrl-Tab
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>


let mapleader=" "       " leader is spacebar


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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugin Manager
"" Call PlugInstall or PlugUpdate
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'nathangrigg/vim-beancount'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
call plug#end()

"" Beancount config
autocmd FileType beancount inoremap <buffer> . .<C-O>:AlignCommodity<CR>
nnoremap <buffer> <leader>= :AlignCommodity<CR>
vnoremap <buffer> <leader>= :AlignCommodity<CR>

"" Vim-repeat config
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
