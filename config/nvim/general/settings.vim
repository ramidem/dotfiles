" init autocmd
autocmd!

set wildmode=longest,list,full
set wildmenu

" Ignore files
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

" Color
" -----------------------------------------------------------------------------
syntax on
colorscheme gruvbox
set background=dark

" General Settings
" -----------------------------------------------------------------------------
set nocompatible
filetype plugin on

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

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" suppress appending <PasteStart> and <PasteEnd> when pasting
" or something about bracketed paste mode
set t_BE=

" do not redraw while executing macros (good performance config)
set lazyredraw

" JavaScript
au BufNewFile,BufRead *.es6 setf javascript

" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
au BufNewFile,BufRead *.ts setf typescript

" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufRead,BufNewFile *.md setlocal textwidth=80

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
endif

" Thick Black Column
" =============================================================================
set colorcolumn=80
highlight colorcolumn ctermbg=0 guibg=#1b1b1b
highlight OverLength ctermbg=black ctermfg=lightgrey
match OverLength /\%81v.\+/

if has('python')
  set pyx=2
elseif has('python3')
  set pyx=3
endif
