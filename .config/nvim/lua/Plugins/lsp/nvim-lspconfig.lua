local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('Plugins.lsp.nvim-masonlsp')
require('Plugins.lsp.lsp-mappings')
require('Plugins.lsp.lsp-ui')

lspconfig.html.setup{
  settings = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  },
  capabilities = capabilities,
}

lspconfig.jsonls.setup{
  settings = {
    json = {
        schemas = require("schemastore").json.schemas(),
    },
  },
  capabilities = capabilities,
}

--lspconfig.ts_ls.setup {
--  capabilities = capabilities
--}

lspconfig.quick_lint_js.setup {
  capabilities = capabilities
}

lspconfig.vtsls.setup {
  capabilities = capabilities
}

lspconfig.pyright.setup {
  capabilities = capabilities
}

lspconfig.pylsp.setup {
  capabilities = capabilities
}

lspconfig.vtsls.setup {
  capabilities = capabilities
}

lspconfig.eslint.setup {
  capabilities = capabilities
}

lspconfig.cssls.setup {
  capabilities = capabilities
}


lspconfig.cssmodules_ls.setup {
  capabilities = capabilities
}

lspconfig.clangd.setup {
  capabilities = capabilities
}

lspconfig.biome.setup {
  capabilities = capabilities
}

lspconfig.lua_ls.setup{
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        -- not check for third party lua library
        checkThirdParty = false,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  capabilities = capabilities,
}

lspconfig.tailwindcss.setup{
  settings = {
    tailwindCSS = {
      experimental = {
        classRegex = {
          "(?:Classes = ?)(?:'|\"|`)([^\"'`]*)(?:'|\"|`)", -- Twig, looks for string preceded by 'class:'
        }
      }
    }
  },
  capabilities = capabilities,
}

