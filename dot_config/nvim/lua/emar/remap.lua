local tooltip = require("tooltip")
local Map = vim.keymap.set

vim.g.mapleader = ' '

-- go to explore page
Map('n', '<leader>en', ':Ex<CR>')

-- will take yanked text and copy it to clipboard
Map('v', '<leader>y', '"+y')

-- move highlighted text up and down + tab and shift tab
Map('v', 'J', ':m \'>+1<CR>gv=gv')
Map('v', 'K', ':m \'<-2<CR>gv=gv')
Map('v', '<Tab>', '>gv')
Map('v', '<S-Tab>', '<gv')

-- -- plenary.nvim
Map('n', '<leader>t', '<Plug>PlenaryTestFile')

-- lsp
Map('n', '<leader>rn', vim.lsp.buf.rename, {})
Map('n', '<leader>gd', vim.lsp.buf.definition, {})
Map('n', '<leader>ca', vim.lsp.buf.code_action, {})
Map('n', '<leader>of', vim.diagnostic.open_float, {})

-- personal remaps
Map('n', '<leader><leader>x', function ()
  vim.cmd('w')
  vim.cmd('so %')
end)
Map('n', '<leader>d', 'r✓')

-- universal-tooltip
Map('n', '<leader><leader>r', function ()
  tooltip.show()
end)

-- Obsidian
Map("n", "<leader>ye", ":Obsidian yesterday<CR>", {})
Map("n", "<leader>to", ":Obsidian today<CR>", {})
Map("n", "<leader>tm", ":Obsidian tomorrow<CR>", {})
Map("n", "<leader>on", ":Obsidian new<CR>", {})
Map("n", "<leader>ch", require("obsidian.api").set_checkbox, {})
