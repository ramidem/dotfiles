syntax on
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

" -----------------------------------------------------------------------------
" Vim Plug
" -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" Dracula Colorscheme
Plug 'gruvbox-community/gruvbox'

" Airline Status Line
Plug 'vim-airline/vim-airline'

" Tmuxline
Plug 'edkolev/tmuxline.vim'

" Interactive Scratchpad
Plug 'metakirby5/codi.vim'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" --- Make sure I am in project's root folder
Plug 'airblade/vim-rooter'

Plug 'preservim/nerdtree'

Plug 'editorconfig/editorconfig-vim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" -----------------------------------------------------------------------------
" Color
" -----------------------------------------------------------------------------
colorscheme gruvbox
set background=dark

" -----------------------------------------------------------------------------
" Mapping
" -----------------------------------------------------------------------------
let mapleader = "\<Space>"

" Edit vimrc
nmap ,ev :tabedit ~/dotfiles/vimrc<CR>

" --- Press `jj` to escape insert mode
:imap jj <Esc>

" --- Space + w = save
noremap <Leader>w :w<CR>
"
" --- Space + Q = close current buffer
nmap <Leader>q :tabc<CR>
" --- Space + q = quit
noremap <Leader>Q :q<CR>

" --- Space + <direction> = switch between windows
noremap <Leader>h :wincmd h<CR>
noremap <Leader>j :wincmd j<CR>
noremap <Leader>k :wincmd k<CR>
noremap <Leader>l :wincmd l<CR>

" --- Space + x = swap windows
noremap <Leader>x :wincmd x<CR>
" --- Space + > = resize window
noremap <Leader>> :vertical resize 86<CR>
" --- split window: vertical
nmap sv :vs<CR>

" --- new tab
nmap te :tabedit<CR>

" --- Source vimrc
nnoremap <Leader><CR> :so ~/.vimrc<CR>

" -----------------------------------------------------------------------------
" Plugins Settings
" -----------------------------------------------------------------------------
" Vim Airline Status Line
" let g:airline_theme = 'gruvbox_material'
" --- enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#exclude_preview = 1

" ---  enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''


" define the set of text to display for each mode.
let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }
" Note: 'multi' is for displaying the multiple cursor mode

" https://github.com/iambibhas/tmux-status-scripts
"? https://gist.github.com/sainnhe/b8240bc047313fd6185bb8052df5a8fb
" https://github.com/edkolev/tmuxline.vim
let g:tmuxline_powerline_separators = 0
let airline#extensions#tmuxline#color_template = 'insert'
" let g:tmuxline_preset = 'tmux'
" custom preset with shell commands
let g:tmuxline_preset = {
      \'a'    : '#(whoami)',
      \'b'    : '#W',
      \'c'    : '',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '',
      \'y'    : '',
      \'z'    : '#H'}

" do not show mode. e.g -- INSERT --
set noshowmode

" Codi.Vim
map <c-c> :Codi!! javascript<cr>
let g:codi#width=25

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" -----------------------------------------------------------------------------
" Coc.vim Stuff
" -----------------------------------------------------------------------------
" --- Toggle Git
noremap <Leader>g :CocCommand git.toggleGutters<CR>

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

" --- Always show the signcolumn, otherwise it would shift the text each time
"     diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" -----------------------------------------------------------------------------
"  STUFF FROM STACKOVERFLOW
" -----------------------------------------------------------------------------
" Copy and Paste in Vim and to other programs
noremap <Leader>Y "+y

set showbreak=↪\
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

set colorcolumn=80
highlight colorcolumn ctermbg=0 guibg=black
highlight OverLength ctermbg=black ctermfg=lightgrey
match OverLength /\%81v.\+/

" Tabs
" --- Tab Previous
nmap <S-h> :tabprev<CR>
" --- Tab Next
nmap <S-l> :tabnext<CR>

" Move entire line up or down
" https://stackoverflow.com/questions/741814/move-entire-line-up-and-down-in-vim
function! s:swap_lines(n1, n2)
  let line1 = getline(a:n1)
  let line2 = getline(a:n2)
  call setline(a:n1, line2)
  call setline(a:n2, line1)
endfunction

function! s:swap_up()
  let n = line('.')
  if n == 1
    return
  endif

  call s:swap_lines(n, n - 1)
  exec n - 1
endfunction

function! s:swap_down()
  let n = line('.')
  if n == line('$')
    return
  endif

  call s:swap_lines(n, n + 1)
  exec n + 1
endfunction

noremap <silent> <A-k> :call <SID>swap_up()<CR>
noremap <silent> <A-j> :call <SID>swap_down()<CR>

" Run Python file in vim
" https://stackoverflow.com/questions/18948491/running-python-code-in-vim
" --- Normal mode
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" --- Insert mode
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Empty value to disable preview window altogether
" let g:fzf_preview_window = 'right:70%'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULTS_OPTS = '--reverse'

" Open File
noremap <Leader>f :Files<CR>
" View Buffers
noremap <Leader>b :Buffers<CR>

":set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"      \,sm:block-blinkwait175-blinkoff150-blinkon175
