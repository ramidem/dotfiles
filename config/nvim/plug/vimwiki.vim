" Toggle a todo
au FileType vimwiki nmap <leader>tl <Plug>VimwikiToggleListItem
au FileType vimwiki vmap <leader>tl <Plug>VimwikiToggleListItem

" Convert a line to list
:nnoremap l* :VimwikiChangeSymbolTo *<CR>
:nnoremap LL :VimwikiChangeSymbolTo -<CR>


let g:vimwiki_global_ext=0
let g:vimwiki_list = [{'path': '~/Dropbox/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


