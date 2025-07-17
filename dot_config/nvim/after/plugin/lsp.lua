local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('luasnip.loaders.from_vscode').lazy_load()

local lsp_servers = {
	  eslint = {},
	  ts_ls = {},
	  lua_ls = {
      cmd = { "lua-lanugage-server" },
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
    gopls = {},
    cssls = {},
    marksman = {},
 }

local lsp_server_names = {}
local mason_handlers = {}

for server_name, opts in pairs(lsp_servers) do
  if server_name ~= "lua_ls" then
    table.insert(lsp_server_names, server_name)

    local setup_function = function ()
      lspconfig[server_name].setup(opts)
    end

    mason_handlers[server_name] = setup_function
  else
    lspconfig[server_name].setup(opts)
  end
end

require('mason-lspconfig').setup({
  automatic_installation = true,
  ensure_installed = lsp_server_names,
  handlers = mason_handlers,
})
