"""""""""""""""""""""""""""""""""
" Author:	Med Aduh
" Website:	http://ramidem.me
" Email:	im.ramidem@gmail.com
" Twitter:	@ramidem
"""""""""""""""""""""""""""""""""
" Still needs some more cleaning up to do.

" Important
" Disable vi-compatibility
"set nocompatible

" Pathogen
"execute pathogen#infect()

" Folding
set foldenable
set foldmethod=indent

" Line numbers
set number

" Syntax, Hightlighting and Spelling
syntax on
filetype on
filetype indent on
filetype plugin on
set cursorline

" Colorscheme
let g:solarized_termcolors=235
set t_Co=235
set background=dark
colorscheme solarized

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

" Mapping
" Pressing jj fast escapes Insert Mode
:imap jj <Esc>

" The Swap File
set noswapfile

" Messages and Info
set showcmd

" Vim Airline
" On Ubuntu, set font to Ubuntu Mono derivative Powerline Regular
" http://askubuntu.com/questions/393005/having-problem-with-fonts-in-vim-airline
"let g:airline_powerline_fonts = 1
"set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
"let g:airline_theme="luna"

" NERDtree
" Open NERDTree with CTRL+\
"map <C-\> :NERDTreeToggle<CR>

" Ctrl+p
"set runtimepath^=~/.vim/bundle/ctrlp.vim
