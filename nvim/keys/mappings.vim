" Mappings
" -----------------------------------------------------------------------------
let mapleader = "\<Space>"

" Edit vimrc
nmap ,ev :tabedit ~/dotfiles/vimrc<CR>

" --- Press `jj` to escape insert mode
:imap <C>[ <Esc>

" --- Space + w = save
noremap <Leader>w :w<CR>

" --- Space + q = quit
nmap <Leader>q :q<CR>

" indent file
map <F7> gg=G<C-o>

" Tabs
" --- Tab Previous
nmap <S-h> :tabprev<CR>
" --- Tab Next
nmap <S-l> :tabnext<CR>

" --- new tab
nmap te :tabedit<CR>

" --- Space + Q = close current buffer
nmap qq :tabc<CR>

" --- split window: vertical
nmap vv :vs<CR>

" Panes
" --- Tab Previous
" --- Space + <direction> = switch between windows
noremap <Left> :wincmd h<CR>
noremap <Down> :wincmd j<CR>
noremap <Up> :wincmd k<CR>
noremap <Right> :wincmd l<CR>

" --- Space + x = swap windows
noremap <Leader>x :wincmd x<CR>

" --- Space + > = resize window
noremap <Leader>> :vertical resize 86<CR>

" --- Source vimrc
nnoremap <Leader><CR> :so ~/.vimrc<CR>

" Coc Stuff
" =============================================================================
" --- Open File
noremap <Leader>f :Files<CR>

" --- View Buffers
noremap <Leader>b :Buffers<CR>

" Codi.Vim
" =============================================================================
map <c-c> :Codi!! javascript<cr>

" NerdTree
" =============================================================================
map <C-n> :NERDTreeToggle<CR>

" Commentary.Vim
" =============================================================================
nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>
