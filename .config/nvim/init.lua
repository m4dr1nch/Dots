require('base')

Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'windwp/nvim-autopairs'
    Plug 'Pocco81/auto-save.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'noib3/nvim-cokeline'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'airblade/vim-gitgutter'
    Plug 'mg979/vim-visual-multi'
    Plug 'kylechui/nvim-surround'
    Plug (
        'akinsho/bufferline.nvim', {tag='*'}
    )
    Plug (
        'neoclide/coc.nvim', {branch='release'}
    )
    Plug (
        'catppuccin/nvim', {as='catppuccin'}
    )
vim.call('plug#end')

require('nvim-autopairs').setup()
require('colorizer').setup()
require("nvim-surround").setup()

-- Load binds `binds.vim`
vim.cmd('source ~/.config/nvim/binds.vim')

-- Found under `lua/`
require('theme')
require('treesitter')
require('nvimtree')
require('coc')
