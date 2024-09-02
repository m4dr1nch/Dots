--[[
PLUGIN: lspconfig
--]]
local lspconfig = require('lspconfig')

lspconfig.phpactor.setup {underline=false}
lspconfig.pylsp.setup {}
lspconfig.gopls.setup {}
lspconfig.rust_analyzer.setup {
        settings = {
            ['rust-analyzer'] = {},
    },
}
