--[[
PLUGIN: lspconfig
--]]
local lspconfig = require('lspconfig')
    lspconfig.phpactor.setup {underline=false}
    lspconfig.pylsp.setup {}
    lspconfig.rust_analyzer.setup {
        settings = {
            ['rust-analyzer'] = {},
    },
}
