local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

vim.keymap.set({'i'}, '<C-k>', function() ls.expand() end, {silent = true})
vim.keymap.set({'i', 's'}, '<C-l>', function() ls.jump( 1) end, {silent = true})
vim.keymap.set({'i', 's'}, '<C-j>', function() ls.jump(-1) end, {silent = true})

vim.keymap.set({'i', 's'}, '<C-e>', function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

vim.keymap.set({ 'i', 's' }, '<C-n>', function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

ls.add_snippets('erlang', {
    s('erl', {
        t({ '#!/usr/bin/env escript', '', '' }),
        t({ 'main(_) ->', '' }),
        t('\t'), i(0)
    })
})

ls.add_snippets('text', {
    s('timestamp', {
        t({ os.date('%x'), '' }),
        t({ '================================================================================' , ''}),
        t('\t'), i(0), t('')
    })
})

ls.add_snippets('markdown', {
    s('timestamp', {
        t({ os.date('%x'), '' }),
        t({ '================================================================================' , ''}),
        t(''), i(0), t({ '', '' })
    })
})
