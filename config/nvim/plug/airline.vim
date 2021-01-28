" enable tabline
let g:airline_extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" let g:airline_extensions = ['branch']
" let g:airline_section_b = '%-0.10{getcwd()}'

set ttimeoutlen=50
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled = 1

let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#fzf#enabled = 1

" =============================================================================
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

" define the set of names to be displayed instead of a specific filetypes
" (for section a and b):
let g:airline_filetype_overrides = {
      \ 'help':  [ 'H', '%f' ],
      \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
      \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
      \ 'startify': [ 'startify', '' ],
      \ 'vim-plug': [ 'Plugins', '' ],
      \ }

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.dirty='✗'
" =============================================================================

" TODO
" https://github.com/iambibhas/tmux-status-scripts
"? https://gist.github.com/sainnhe/b8240bc047313fd6185bb8052df5a8fb
" https://github.com/edkolev/tmuxline.vim
let g:tmuxline_powerline_separators = 0
let airline#extensions#tmuxline#color_template = 'normal'
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
