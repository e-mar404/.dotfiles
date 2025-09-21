local oil = require "oil"

oil.setup {
  default_file_explorer = true,
  keymaps = {
    ["<C-h>"] = false,
  },
  columns = {
    "mtime",
    "icon",
  },
  delete_to_trash = true,
  view_options = {
    show_hidden = true,
  },
}

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent dir" })
