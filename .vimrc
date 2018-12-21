""""""""""""""""""""""""""""""""""""
" Author:	Med Aduh
" Website:	http://ramidem.me
" Email:	im.ramidem@gmail.com
" Twitter:	@ramidem
""""""""""""""""""""""""""""""""""""
" Pathogen
execute pathogen#infect()
syntax on

" ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Folding
" set foldenable
" set foldmethod=indent

" Line numbers
set number relativenumber

" Syntax, Hightlighting and Spelling
syntax on
filetype plugin indent on
set cursorline
set noshowmode
" set showtabline=2

" Colorscheme
color dracula
" let g:solarized_termcolors=235
" set t_Co=235
" set background=dark
" colorscheme solarized

" Moving Around, Searching and Patterns
set ignorecase
set hlsearch
set smartcase
set incsearch
set gdefault
set showmatch

" Multiple Windows
set laststatus=2
" set winwidth=84
" set winheight=5
" set winminheight=5
" set winheight=999

" Tabs and Indenting
set tabstop=2
set autoindent

" Column
set colorcolumn=80
highlight OverLength ctermbg=black ctermfg=white
match OverLength /\%81v.\+/

" Mapping
let mapleader = "\<Space>"

" Pressing jj fast escapes Insert Mode
:imap jj <Esc>

" Leader w saves the file
noremap <Leader>w :w<CR>

" Leader q quits the file
noremap <Leader>q :q<CR>

" The Swap File
set noswapfile

" Messages and Info
set showcmd

" NERDTree
" ========
" Open automatically when vim starts up
" autocmd vimenter * NERDTree

" Open NERDTree with C-n
map <C-n> :NERDTreeToggle<CR>

" Change default arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" ctrlp.vim Mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Vim Airline
let g:airline_theme='dracula'
call airline#parts#define_accent('mode', 'none')
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#enabled = 1

