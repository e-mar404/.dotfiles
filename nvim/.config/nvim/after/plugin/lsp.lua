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
    ['<C-k>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<C-j>'] = cmp.mapping.select_next_item({behavior = 'select'}),

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


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	  'eslint',
    'ts_ls',
	  'lua_ls',
  },
  handlers = {
    lua_ls = function()
      require('neodev').setup()

      lspconfig.lua_ls.setup ({
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
      })
    end,

    ltex = function ()
      lspconfig.ltex.setup {}
    end,

    eslint = function ()
      lspconfig.eslint.setup {}
    end,

    ts_ls = function ()
      lspconfig.ts_ls.setup {}
    end,

    gopls = function ()
      lspconfig.gopls.setup {}
    end,

    cssls = function ()
      lspconfig.cssls.setup {}
    end,

    ruby_lsp = function ()
      lspconfig.ruby_lsp.setup {}
    end,

    hls = function ()
      lspconfig.hls.setup {}
    end,

    marksman = function ()
      lspconfig.marksman.setup {}
    end,

    ocamllsp = function ()
      lspconfig.ocamllsp.setup {}
    end,
  }
})

-- not on mason
lspconfig.sourcekit.setup {
  cmd = { '/Library/Developer/CommandLineTools/usr/bin/sourcekit-lsp' },
  root_dir = lspconfig.util.root_pattern('*.swift'),
}
