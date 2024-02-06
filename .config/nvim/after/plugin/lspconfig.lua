--[[
PLUGIN: lspconfig
--]]
local lspconfig = require('lspconfig')
    lspconfig.phpactor.setup {underline=false}
    lspconfig.pyright.setup {}
    lspconfig.rust_analyzer.setup {
        settings = {
            ['rust-analyzer'] = {},
    },
}
