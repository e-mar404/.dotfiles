local gh = function(x)
  return 'https://github.com/' .. x
end

vim.pack.add({
  gh('ThePrimeagen/vim-be-good'),
  gh('nvim-telescope/telescope.nvim'),
  gh('nvim-lua/plenary.nvim'),
  gh('mbbill/undotree'),
  gh('neovim/nvim-lspconfig'),
  gh('folke/lazydev.nvim'),
  {
    src = gh('saghen/blink.cmp'),
    version = 'v1',
  },
  gh('saghen/blink.lib'),

  gh("stevearc/oil.nvim"),
  gh("nvim-tree/nvim-web-devicons"),

  -- TODO: this might need more config
  gh("L3MON4D3/LuaSnip"),

  {
    src = gh("nvim-treesitter/nvim-treesitter"),
    version = 'main'
  },

  {
    src = gh('ThePrimeagen/harpoon'),
    version = "harpoon2"
  },

  {
    src = gh('catppuccin/nvim'),
    name = "catppuccin"
  },

  gh('e-mar404/tooltip.nvim'),
})
