" Color
" -----------------------------------------------------------------------------
syntax on
colorscheme gruvbox
set background=dark

" General Settings
" -----------------------------------------------------------------------------
set cursorline
set number relativenumber
set ignorecase
set hlsearch
set incsearch
set autoindent
set nowrap
set noswapfile
set noshowmatch
set nohlsearch
set smartcase
set undodir=~/.vim/undodir
set undofile
set termguicolors
set tabstop=2 shiftwidth=2
set expandtab
set laststatus=2
set scrolloff=8

" Messages and Info
set showcmd

" do not show mode. e.g -- INSERT --
set noshowmode


set showbreak=↪\
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

set colorcolumn=80
highlight colorcolumn ctermbg=0 guibg=black
highlight OverLength ctermbg=black ctermfg=lightgrey
match OverLength /\%81v.\+/

" Coc.vim Stuff
" =============================================================================
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
map <c-c> :Codi!! javascript<cr>
let g:codi#width=25

" NerdTree
map <C-n> :NERDTreeToggle<CR>
