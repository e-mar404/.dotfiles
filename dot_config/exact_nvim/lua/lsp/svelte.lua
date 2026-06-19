vim.lsp.config['svelte-language-tools'] = {
  cmd = { 'svelteserver', '--stdio' },
  filetypes = { 'svelte' },
  root_markers = { '.svelte-kit', '.git', '.svelte' },
}

vim.lsp.enable('svelte-language-tools')
