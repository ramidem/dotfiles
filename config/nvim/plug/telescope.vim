" Find files using Telescope command-line sugar.
nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>bb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>h <cmd>lua require('telescope.builtin').help_tags()<cr>

lua << EOF
local actions = require('telescope.actions')

require('telescope').setup{
defaults = {
    winblend = 1,
    layout_strategy = "vertical",
    sorting_strategy = "ascending",
    layout_config = {
        vertical = {
            mirror = true,
            },

        height = 0.9,
        width = 0.9
        },
    mappings = {
        n = {
            ["q"] = actions.close
            }
        }
    }
}
require('telescope').load_extension('fzf')
EOF
