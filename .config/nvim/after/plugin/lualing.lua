--[[
PLUGIN: lualine status bar
--]]
require('lualine').setup {
    options = {
        icons_enabled = true,
        section_separators = { left = '', right = ''},
        disabled_filetypes = {},
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        padding = 1,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'encoding'},
        lualine_c = {''},
        lualine_x = {'progress'},
        lualine_y = {'filetype'},
        lualine_z = {'filename'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
