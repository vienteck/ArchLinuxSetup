local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.confirm({select = true}),
        ['<C-j>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
        ['<C-k>'] = cmp.mapping.select_next_item({behavior = 'select'})
    })
})
