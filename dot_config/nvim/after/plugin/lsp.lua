local ls = require('luasnip')
local cmp = require('cmp')
local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = cmp.config.sources ({
    { name = 'luasnip' },
    { name = 'nvim_lsp' },
  }),
  mapping = {
    ['<C-l>'] = cmp.mapping.confirm({select = true}),
    ['<C-h>'] = cmp.mapping.abort(),
    ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<CR>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        if ls.expandable() then
          ls.expand()
        else
          cmp.confirm({
            select = true,
          })
        end
      else
        fallback()
      end
    end),

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif ls.locally_jumpable(1) then
        ls.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif ls.locally_jumpable(-1) then
        ls.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

  },
  snippet = {
    expand = function(args)
      ls.lsp_expand(args.body)
    end,
  },
})

local lsp_servers = {
	  eslint = {},
    ts_ls = {},
	  lua_ls = {
      capabilities = lsp_capabilities,
        settings = {
          Lua = {
            runtime = {
              -- Tell the language server which version of Lua you're using
              -- (most likely LuaJIT in the case of Neovim)
              version = 'LuaJIT',
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = { color, 'P', 'Map', 'describe', 'it', 'before_each' },
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
    ltex = {},
    gopls = {},
    cssls = {},
    ruby_lsp = {},
    marksman = {},
    ocamllsp = {},
    elixirls = {},
 }

local lsp_server_names = {}
local mason_handlers = {}

for server_name, opts in pairs(lsp_servers) do
  if server_name ~= "lua_ls" then 
    local setup_function = function ()
      lspconfig[server_name].setup(opts)
    end

    table.insert(lsp_server_names, server_name)
    mason_handlers[server_name] = setup_function
  end
end

require('mason-lspconfig').setup({
  automatic_installation = true,
  ensure_installed = lsp_server_names,
  handlers = mason_handlers,
})
