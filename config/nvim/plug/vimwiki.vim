" Toggle a todo
au FileType vimwiki nmap <leader>tl <Plug>VimwikiToggleListItem
au FileType vimwiki vmap <leader>tl <Plug>VimwikiToggleListItem

let g:vimwiki_global_ext=0
let g:vimwiki_list = [{'path': '~/Dropbox/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

