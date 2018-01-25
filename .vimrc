" Still needs some more cleaning up to do.
" Staying minimal for now and incrementally improve upon it.

"=============================================
" PLUGINS
"=============================================

" Pathogen
execute pathogen#infect()

syntax on														" enable syntax
filetype plugin indent on

" Vim Airline
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
let g:airline_theme="cobalt2"

" NERDtree
" Open NERDTree with CTRL+\
"map <C-\> :NERDTreeToggle<CR>

" Ctrl+p
"set runtimepath^=~/.vim/bundle/ctrlp.vim
set conceallevel=1
"=============================================
" SETTINGS
"=============================================

set nocompatible										" Vi compatibility
set number relativenumber

set number relativenumber

set t_Co=256												" number of colors
set cursorline											" line highlighting
colorscheme dracula                 " a dark theme for vim - https://github.com/dracula/vim

set showcmd                         " Messages and Info
set noswapfile

" Moving Around, Searching and Patterns
set ignorecase											" ignore case sensitivity
set hlsearch												" highlight matches
set incsearch												" search as characters are entered 
set showmatch												" highlight matching

" Tabs and Indenting
set tabstop=2												" number of spaces per tab
set softtabstop=2										" number of spaces in tab when editing
set shiftwidth=2										" number of spaces when shift indenting
set expandtab												" tab to spaces
set smartindent

"=============================================
" TODO
"=============================================

" Fold
" set foldenable
" set foldmethod=indent

" MAPPINGS

" Pressing jj fast escapes Insert Mode
" :imap jj <Esc>


