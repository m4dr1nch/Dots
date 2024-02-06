--[[
PLUGIN: catppucin theme
--]]
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
--
-- Setup specific highlights
--
vim.cmd.colorscheme 'catppuccin'
vim.api.nvim_exec(
[[
hi Visual guifg=#0FA4FF guibg=#222222 gui=none
hi Search guifg=#FFAF87 guibg=#222222 gui=none
hi EndOfBuffer guifg=#0FA4FF
hi ColorColumn guibg=#268FAC
]],true)
