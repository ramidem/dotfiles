" nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').file_browser(require('telescope.themes').get_dropdown({}))<cr>

nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>bb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

lua << EOF
require('telescope').setup{
defaults = {
      prompt_prefix = "$ ",
      winblend = 1,
      layout_strategy = "vertical",
      sorting_strategy = "ascending",
      layout_config = {
            vertical = {
                  mirror = true,
                  },
            },
      },
}
require('telescope').load_extension('fzf')
EOF
