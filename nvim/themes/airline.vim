" Vim Airline Status Line
let g:airline_theme = 'gruvbox'
" --- enable tabline
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline_inactive_collapse=1

let g:airline_extensions = ['branch']
let g:airline_section_b = '%-0.10{getcwd()}'

set ttimeoutlen=50
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#fzf#enabled = 1

" TODO
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
