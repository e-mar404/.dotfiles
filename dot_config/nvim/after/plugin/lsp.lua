local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('luasnip.loaders.from_vscode').lazy_load()

local nix_servers = {
	  lua_ls = {
      cmd = { "lua-language-server" },
      capabilities = lsp_capabilities,
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              globals = { color, "vim", 'P', 'Map', 'describe', 'it', 'before_each' },
            },
            workspace = {
              library = vim.env.VIMRUNTIME,
            },
            telemetry = {
              enable = false,
            },
          },
        },
      },
    ltex = {},
    marksman = {},
}

local mason_servers = {
  eslint = {},
  ts_ls = {},
  gopls = {},
  cssls = {},
}

for server_name, opts in pairs(nix_servers) do
  lspconfig[server_name].setup(opts)
end

local lsp_server_names = {}
local mason_handlers = {}

for server_name, opts in pairs(mason_servers) do
  table.insert(lsp_server_names, server_name)

  local setup_function = function ()
    lspconfig[server_name].setup(opts)
  end

  mason_handlers[server_name] = setup_function
end

require('mason-lspconfig').setup({
  automatic_installation = true,
  ensure_installed = lsp_server_names,
  handlers = mason_handlers,
})
