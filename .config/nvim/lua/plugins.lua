--[[
One-line plugin configurations
--]]
require('nvim-autopairs').setup()
require('nvim-surround').setup()
require('colorizer').setup()



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



--[[
PLUGIN: bufferline
--]]
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



--[[
PLUGIN: treesitter
--]]
require "nvim-treesitter.configs".setup {
    ensure_installed = {"c", "lua", "vim", "vimdoc", "python", "php"},
    
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,

        additional_vim_regex_highlighting = false
    }
}



--[[
PLUGIN: cmp & lspconfig
--]]
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
    }, {
        { name = 'buffer' },
    })
})

cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' },
    }, {
        { name = 'buffer' },
    })
})

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- Setup lspconfig
local lspconfig = require('lspconfig')
    lspconfig.phpactor.setup {underline=false}
    lspconfig.pyright.setup {}
    lspconfig.rust_analyzer.setup {
        settings = {
            ['rust-analyzer'] = {},
    },
}



--[[
PLUGIN: harpoon
--]]
local harpoon = require("harpoon").setup({
    global_settings = {
        save_on_toggle = false,
        save_on_change = true,
    };
})
vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)



--[[
PLUGIN: bookmarks
--]]
require('bookmarks').setup({
    save_file = vim.fn.expand "$HOME/.config/nvim/.bookmarks", 
    keywords =  {
        ["@t"] = "☑️ ",
        ["@w"] = "⚠️ ", 
        ["@f"] = "⛏ ", 
        ["@n"] = " ", 
    },
    on_attach = function(bufnr)
        local bm = require "bookmarks"
        local map = vim.keymap.set
        map("n","mm",bm.bookmark_toggle) 
        map("n","mi",bm.bookmark_ann) 
        map("n","mc",bm.bookmark_clean) 
        map("n","mn",bm.bookmark_next) 
        map("n","mp",bm.bookmark_prev) 
        map("n","ml",bm.bookmark_list) 
    end
})



--[[
PLUGIN: auto-save
--]]
require("auto-save").setup({
    enabled = true, 
    execution_message = {
		message = function() 
			return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
		end,
		dim = 0.18, 
		cleaning_interval = 1250, 
	},
    trigger_events = {"InsertLeave", "TextChanged"}, 
	
	condition = function(buf)
		local fn = vim.fn
		local utils = require("auto-save.utils.data")

        if vim.bo.ft == "harpoon" then
            return false
        end
        
		if
			fn.getbufvar(buf, "&modifiable") == 1 and
			utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
			return true 
		end
		return false 
	end,
    write_all_buffers = false, 
    debounce_delay = 135, 
	callbacks = { 
		enabling = nil, 
		disabling = nil, 
		before_asserting_save = nil, 
		before_saving = nil, 
		after_saving = nil 
	}
})
