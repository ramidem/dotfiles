" Color
" -----------------------------------------------------------------------------
syntax on
colorscheme gruvbox
set background=dark

" General Settings
" -----------------------------------------------------------------------------
set autoindent

set cursorline
set clipboard=unnamedplus
set conceallevel=0

set encoding=utf-8
set expandtab

set fileencoding=utf-8
set formatoptions-=cro

set hlsearch

set iskeyword+=-

set ignorecase
set incsearch

set laststatus=2

set mouse=a

set nohlsearch
set noshowmatch
set noshowmode
set noswapfile
set nowrap
set number relativenumber

set pumheight=10

set scrolloff=8
set shiftwidth=2
set showtabline=1
set showcmd
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright

set tabstop=2 softtabstop=2
set termguicolors
set timeoutlen=500
set t_Co=256

set undofile
set undodir=~/.vim/undodir

set showbreak=↪\
set list
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Thick Black Column
" =============================================================================
set colorcolumn=80
highlight colorcolumn ctermbg=0 guibg=#1b1b1b
highlight OverLength ctermbg=black ctermfg=lightgrey
match OverLength /\%81v.\+/

" --- TextEdit might fail if hidden is not set
set hidden

" --- Some servers have issues with backup files
set nobackup
set nowritebackup

" --- Give more space for displaying messages
" set cmdheight=2

" --- Having longer updatetime leads to noticeable delays and poor user
"     experience
set updatetime=300

" --- Don't pass messages to |ins-completion-menu|
set shortmess+=c

" Codi.Vim
let g:codi#width=25

" copy current file's filename
nmap cp :let @+ = expand("%:t")<CR>
