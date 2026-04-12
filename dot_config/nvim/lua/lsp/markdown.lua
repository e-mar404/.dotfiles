vim.lsp.config['marksman'] = {
  cmd = { 'marksman' },
  filetypes = { 'markdown' },
  root_markers = { '.md', '.git' },
}

vim.lsp.enable('marksman')
