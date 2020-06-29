" Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax on
set cursorline
set guicursor=
set number relativenumber
set ignorecase
set hlsearch
set incsearch
set autoindent
set nowrap
set noswapfile
set noshowmatch
set nohlsearch
set hidden

" TO REVIEW
set noerrorbells
set smartindent
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set termguicolors
set tabstop=2 shiftwidth=2
set expandtab
set laststatus=2
set scrolloff=8

set showbreak=↪\
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

set colorcolumn=80
highlight colorcolumn ctermbg=0 guibg=black
highlight OverLength ctermbg=black ctermfg=lightgrey
match OverLength /\%81v.\+/

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" @TODO
" Emmet.vim
" indentline & vim-jsx-pretty
" vim-commentary
" ALE (eslint & prettier)
" COC

call plug#begin('~/.vim/plugged')

" Dracula Colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Airline Status Line
Plug 'vim-airline/vim-airline'

" Interactive Scratchpad
Plug 'metakirby5/codi.vim'

Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme dracula
set background=dark

" Give more space for displaying messages
set cmdheight=2

" Plugins Settings
" ================

" Vim Airline Status Line
" --- enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" ---  enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" theme
let g:airline_theme = 'dracula'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Codi.Vim
map <c-c> :Codi!! javascript<cr>
let g:codi#width=25

" Mapping
let mapleader = "\<Space>"

" --- Press `jj` to escape insert mode
:imap jj <Esc>

" ---Leader `w` saves file
noremap <Leader>w :w<CR>

" ---Leader `q` quits file
noremap <Leader>q :q<CR>

" The Swap File
set noswapfile

" Messages and Info
set showcmd
" Run Python file in vim
" https://stackoverflow.com/questions/18948491/running-python-code-in-vim

"   Normal mode
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"   Insert mode
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
