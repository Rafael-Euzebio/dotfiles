local cmp = require('cmp')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require('Plugins.servers')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').expand_snippet(args.body)
        end,
    },

    window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
    sources = cmp.config.sources({
        { name = 'luasnip' },
        { name = 'cmp_tabnine' },
      }, {
        {name = "buffer" }
      }),

    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    }),

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
})


for _, lsp in ipairs(servers) do 
    require('lspconfig')[lsp].setup {
        capabilities = capabilities
    }
end
