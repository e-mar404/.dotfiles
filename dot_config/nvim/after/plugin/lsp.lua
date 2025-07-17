local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('luasnip.loaders.from_vscode').lazy_load()

local lsp_servers = {
  -- eslint = {},
  -- ts_ls = {},
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
          -- Make the server aware of Neovim runtime files
          library = vim.env.VIMRUNTIME,
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    },
  },
  -- ltex = {},
  gopls = {
    cmd = { "gopls" }
  },
  -- cssls = {},
  -- marksman = {},
}

for server_name, opts in pairs(lsp_servers) do
  lspconfig[server_name].setup(opts)
end
