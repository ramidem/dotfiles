lua << EOF
require'lualine'.setup {
      sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff'},
            lualine_c = {'filename'},
            lualine_x = {'location', 'encoding', 'fileformat'},
            lualine_y = {'filetype'},
            lualine_z = {'progress', 'RMDM'}
            },
      }
EOF
