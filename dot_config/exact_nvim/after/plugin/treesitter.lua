local ts = require("nvim-treesitter")

ts.setup {
  install_dir = vim.fn.stdpath('data') .. '/site',
  ensure_installed = {
    "go",
    "javascript",
    "lua",
    "markdown",
    "svelte",
    "typescript"
  },
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'md', 'svelte', 'html' },
  callback = function ()
    vim.treesitter.start()
    vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.wo.foldmethod = "expr"
  end,
})
