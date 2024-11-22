--{This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- base neovim
  use {
    {'wbthomason/packer.nvim'},
    {'nvim-telescope/telescope.nvim', tag = '0.1.x', requires = { {'nvim-lua/plenary.nvim'} }},
    {
      'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
    },
  }

  -- LSP things
  use {
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'saadparwaiz1/cmp_luasnip'},
    {
      'L3MON4D3/LuaSnip',
      -- follow latest release.
      tag = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!:).
      run = 'make install_jsregexp'
    },
    {'folke/neodev.nvim'},
  }

  -- from the Primeagen
  use {
    {'ThePrimeagen/harpoon'},
    {'ThePrimeagen/vim-be-good'},
    {'mbbill/undotree'},
  }

  -- color themes
  use {
    {'rose-pine/neovim', as = 'rose-pine' },
    {'sainnhe/everforest'},
    {'arzg/vim-colors-xcode'},
    {'projekt0n/github-nvim-theme'},
  }

  -- personal plugins
  -- dev
  use '~/plugins/tooltip.nvim'

  -- prod
  -- use 'e-mar404/tooltip.nvim'
end)
