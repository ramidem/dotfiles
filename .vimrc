" Still needs some more cleaning up to do.
" Staying minimal for now and incrementally improve upon it.

set nocompatible

set number

syntax enable
filetype on
filetype indent on
filetype plugin on

set t_Co=256
set cursorline
colorscheme dracula

" Moving Around, Searching and Patterns
set ignorecase
set hlsearch
set smartcase
set incsearch
set gdefault
set showmatch

" Tabs and Indenting
set tabstop=2
set autoindent

" set foldenable
" set foldmethod=indent
" Multiple Windows
" set laststatus=2
" set winwidth=84
" set winheight=5
" set winminheight=5
" set winheight=999


" Mapping
" Pressing jj fast escapes Insert Mode
" :imap jj <Esc>

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

" https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/cobalt2.vim

" NERDtree
" Open NERDTree with CTRL+\
"map <C-\> :NERDTreeToggle<CR>

" Ctrl+p
"set runtimepath^=~/.vim/bundle/ctrlp.vim

