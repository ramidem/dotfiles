" nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').file_browser(require('telescope.themes').get_dropdown({}))<cr>

" Find files using Telescope command-line sugar.
nnoremap ;f <cmd>Telescope find_files<cr>
nnoremap ;g <cmd>Telescope live_grep<cr>
nnoremap ;b <cmd>Telescope buffers<cr>
nnoremap ;h <cmd>Telescope help_tags<cr>

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
