local ts = require("nvim-treesitter")

ts.setup {
  install_dir = vim.fn.stdpath('data') .. '/site',
  ensure_installed = {
    "go",
    "javascript",
    "lua",
    "markdown",
  },
}

vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  pattern = { '*.md'},
  callback = function ()
    vim.treesitter.start()
    -- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    -- vim.wo.foldmethod = "expr"
  end,
})
