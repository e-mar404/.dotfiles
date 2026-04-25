local blink = require('blink-cmp')

blink.setup {
  sources = {
    default = { "lazydev", "lsp", "path", "snippets", "buffer" },
    providers = {
      lazydev = {
        name = "LazyDev",
        module = "lazydev.integrations.blink",
        -- make lazydev completions top priority (see `:h blink.cmp`)
        score_offset = 100,
      },
    }
  },

  keymap = {
    preset = "none",

    ["<C-k>"] = { 'show' },
    ["<C-l>"] = { 'accept', 'fallback' },
    ["<C-n>"] = { 'select_next', 'fallback' },
    ["<C-p>"] = { 'select_prev', 'fallback' },
    ["<C-h>"] = { 'cancel' },
  },
}
