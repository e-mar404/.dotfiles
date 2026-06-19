vim.lsp.config['typescript-language-server'] = {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'typescript' },
  root_markers = { '.ts', 'tsconfig.json' }
}

vim.lsp.enable('typescript-language-server')
