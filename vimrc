syntax on
set cursorline
set number relativenumber
set noshowmode
set ignorecase
set hlsearch
set incsearch
set gdefault
set showmatch
set laststatus=2
set autoindent
set nowrap
set noswapfile
set tabstop=2 shiftwidth=2 expandtab

set colorcolumn=80
highlight colorcolumn ctermbg=lightgrey guibg=lightgrey
highlight OverLength ctermbg=black ctermfg=lightgrey
match OverLength /\%81v.\+/

" Mapping
let mapleader = "\<Space>"

	" Press `jj` to escape insert mode
:imap jj <Esc>

	" Leader `w` saves file
noremap <Leader>w :w<CR>

	" Leader `q` quits file
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
