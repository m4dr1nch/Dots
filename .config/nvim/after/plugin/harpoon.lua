--[[
PLUGIN: harpoon
--]]
local harpoon = require("harpoon").setup({
    global_settings = {
        save_on_toggle = false,
        save_on_change = true,
    };
})
vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)
