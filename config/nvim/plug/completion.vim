" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

let g:completion_enable_auto_popup = 1

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'snippet']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]
imap  <c-j> <Plug>(completion_next_source)
imap  <c-k> <Plug>(completion_prev_source)

let g:completion_enable_auto_popup=1

" g:completion_enable_snippet
"
let g:completion_popup_border='solid'
let g:completion_enable_auto_paren=1

let g:completion_trigger_character = ['.', '::']
let g:completion_auto_change_source=1

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

let g:completion_matching_ignore_case = 1
