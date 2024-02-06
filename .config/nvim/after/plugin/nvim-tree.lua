--[[
PLUGIN: nvimtree
--]]
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require('nvim-tree').setup(
    {
        sort_by = 'case_sensitive',
        view = {
            side = 'right'
        },
        renderer = {
            group_empty = true
        },
        filters = {
            dotfiles = true
        },
    }
)
