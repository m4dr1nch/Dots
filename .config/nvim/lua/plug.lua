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
    -- Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'mbbill/undotree'
    Plug (
        'akinsho/bufferline.nvim', {tag='*'}
    )
    Plug (
        'ThePrimeagen/harpoon', {
            branch='harpoon2',
            dependecies={
                'nvim-lua/plenary.nvim',
                'nvim-telescope/telescope.nvim'
            }
        }
    )
    Plug (
        'catppuccin/nvim', {as='catppuccin'}
    )
vim.call('plug#end')
