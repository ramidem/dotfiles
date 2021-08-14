" Run Python file in vim
" https://stackoverflow.com/questions/18948491/running-python-code-in-vim
" =============================================================================
" --- Normal mode
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" --- Insert mode
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Move entire line up or down
" https://stackoverflow.com/questions/741814/move-entire-line-up-and-down-in-vim
" =============================================================================
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

noremap <silent> <M-k> :call <SID>swap_up()<CR>
noremap <silent> <M-j> :call <SID>swap_down()<CR>

" make the current pane obvious when switching to it
" =============================================================================
augroup ReduceNoise
  autocmd!
  autocmd WinEnter * :call ResizeSplits()
  autocmd WinLeave * set nonumber norelativenumber nocul
augroup END

" https://hackernoon.com/automatic-window-resizing-in-vim-g9n3ueb
function! ResizeSplits()
  if &ft == 'defx' || &ft == 'help'
    set nonumber norelativenumber nocul
    return
  elseif &ft == 'qf'
    " Always set quickfix list to a height of 10
    resize 10
    return
  else
    set number relativenumber cul
    set winwidth=100
    wincmd =
  endif
endfunction
