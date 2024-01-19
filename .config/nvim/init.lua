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
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'tomasky/bookmarks.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'stevearc/conform.nvim'
    
    Plug (
        'akinsho/bufferline.nvim', {tag='*'}
    )
    Plug (
        'catppuccin/nvim', {as='catppuccin'}
    )
vim.call('plug#end')

require('nvim-autopairs').setup()
require('colorizer').setup()
require('nvim-surround').setup()
require('conform').setup()

-- Load binds `binds.vim`
vim.cmd('source ~/.config/nvim/binds.vim')

-- Found under `lua/`
require('theme')
require('treesitter')
require('nvimtree')
require('lspthings')
require('book')
