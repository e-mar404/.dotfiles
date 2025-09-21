return {
  "obsidian-nvim/obsidian.nvim",
  -- dir = "~/plugins/obsidian.nvim",
  -- dev = { true },
  lazy = false,

  event = {
    "BufReadPre /home/emar/obsidian/*/*.md",
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
        name = "obsidian",
        path = "~/obsidian",
      },
    },
    daily_notes = {
      folder = "900-daily-notes",
      default_tags = { "daily-notes" },
      template = "999-templates/daily-notes.md",
    },

    completion = {
      nvim_cmp = true,
      min_chars = 2,
      create_new = true,
    },

    templates = {
      folder = "999-templates",
    },

  },
}
