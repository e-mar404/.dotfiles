return {

  {
   "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = { {"nvim-lua/plenary.nvim"} },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "ThePrimeagen/vim-be-good",
  },

  {
    "mbbill/undotree",
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  {
    "e-mar404/tooltip.nvim",
    opts = {
      styled = true,
      patterns = {
        [".kts"] = "kotlin %s",
        [".py"] = "python %s",
        [".go"] = "go run .",
        [".exs"] = "elixir %s",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = {},
  },

  {
    "hrsh7th/cmp-nvim-lsp",
    opts = {},
  },

  {
    "saadparwaiz1/cmp_luasnip",
    config = function ()
    end,
    opts = {},
  },

  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
  },

  {
    "folke/neodev.nvim",
    opts = {},
  },

  {
    "obsidian-nvim/obsidian.nvim",

    lazy = false,

    event = {
      "BufReadPre /home/emar/notes/*/*.md",
    },

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
      legacy_commands = false,

      workspaces = {
        {
          name = "personal",
          path = "~/notes/personal",
        },
        {
          name = "work",
          path = "~/notes/work",
        },
      },
      daily_notes = {
        folder = "daily-notes",
        default_tags = { "daily-notes" },
        template = "templates/daily-notes.md",
      },

      completion = {
        nvim_cmp = true,
        min_chars = 2,
        create_new = true,
      },

      template = {
        folder = "templates",
      },

    },
  },
}
