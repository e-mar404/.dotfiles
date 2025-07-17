local ls = require("luasnip")
local cmp = require("cmp")

cmp.setup({
  sources = cmp.config.sources ({
    { name = "luasnip" },
    { name = "nvim_lsp" },
  }),
  mapping = {
    ["<C-l>"] = cmp.mapping.confirm({select = true}),
    ["<C-h>"] = cmp.mapping.abort(),
    ["<C-p>"] = cmp.mapping.select_prev_item({behavior = "select"}),
    ["<C-n>"] = cmp.mapping.select_next_item({behavior = "select"}),
    ["<CR>"] = cmp.mapping(function(fallback)
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
