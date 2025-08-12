return {
  {
    dir = "~/plugins/obsidian.nvim",
    dev = { true },

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

      templates = {
        folder = "templates",
      },

    },
  },
}
