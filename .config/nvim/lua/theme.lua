require('catppuccin').setup {
    transparent_background = true,
    color_overrides = {
        all = {
            text = '#E1E1E1',
            surface1 = '#64DBFF',
            mantle = '#222222'
        },
    },
    integrations = {
        nvimtree = true
    },
}

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

local bufferline = require('bufferline')
bufferline.setup {
    options = {
        themable = true,
        style_preset = bufferline.style_preset.minimal,
        buffer_close_icon = '✘',
        close_icon = '✘',
        modified_icon = '⬤',
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            }
        },
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        indicator = {
            style = 'icon'
        },
        separator_style = 'padded_slope',
    },
    highlights = {
        close_button_selected = {
            fg = '#FF6464'
        },
        buffer_visible = {
            fg = '#87AFFF'
        },
        buffer_selected = {
            fg = '#64DBFF'
        },
        numbers = {
            fg = '#64DBFF'
        },
        numbers_visible = {
            fg = '#64DBFF'
        },
        numbers_selected = {
            fg = '#64DBFF'
        },
        duplicate_selected = {
            fg = '#64DBFF',
            italic = true
        },
        duplicate_visible = {
            fg = '#87AFFF',
            italic = true
        },
        duplicate = {
            fg = '#87AFFF',
            italic = true
        },
        modified = {
            fg = '#64FFAA'
        },
        modified_visible = {
            fg = '#64FFAA',
        },
        modified_selected = {
            fg = '#64FFAA',
        },
        separator_selected = {
            fg = '#64DBFF',
        },
        separator_visible = {
            fg = '#87AFFF',
        },
        separator = {
            fg = '#87AFFF',
        },
        offset_separator = {
            fg = '#64DBFF',
        },
        trunc_marker = {
            fg = '#64DBFF',
        }
    }
}

vim.cmd.colorscheme 'catppuccin'

vim.api.nvim_exec(
[[
hi Visual guifg=#0FA4FF guibg=#222222 gui=none
hi Search guifg=#FFAF87 guibg=#222222 gui=none
hi EndOfBuffer guifg=#0FA4FF
]],
true)
