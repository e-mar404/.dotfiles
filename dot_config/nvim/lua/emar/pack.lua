local gh = function(x)
  return 'https://github.com/' .. x
end

vim.pack.add({
  gh('ThePrimeagen/vim-be-good'),
  gh('nvim-telescope/telescope.nvim'),
  gh('nvim-lua/plenary.nvim'),
  gh('mbbill/undotree'),
  gh('neovim/nvim-lspconfig'),
  -- TODO: this might be able to be done already with just neovim
    gh('hrsh7th/nvim-cmp'),
    gh("hrsh7th/cmp-nvim-lsp"),

  gh("saadparwaiz1/cmp_luasnip"),
  gh("stevearc/oil.nvim"),
  gh("nvim-tree/nvim-web-devicons"),

  -- TODO: this might need more config
  gh("L3MON4D3/LuaSnip"),
  gh("folke/neodev.nvim"),

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

  -- TODO: need to figure out how to do this with vim.pack
  -- {
  gh('e-mar404/tooltip.nvim'),
  --   opts = {
  --     styled = true,
  --     patterns = {
  --       [".kts"] = "kotlin %s",
  --       [".py"] = "python %s",
  --       [".go"] = "go run .",
  --       [".exs"] = "elixir %s",
  --     },
  --   },
  -- },
})
