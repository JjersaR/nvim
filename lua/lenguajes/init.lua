local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspFlags = {
  debounce_text_changes = 150,
}

--para c, c++ y de más
require 'lspconfig'.clangd.setup {
  capabilities = capabilities,
  flags = lspFlags
}

-- para python
require 'lspconfig'.pyright.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

--css
require 'lspconfig'.cssls.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- emmet html y css
require 'lspconfig'.emmet_ls.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

--tsserver
require 'lspconfig'.tsserver.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

--lua
require 'lspconfig'.sumneko_lua.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

--java
require 'lspconfig'.jdtls.setup {
  capabilities = capabilities,
  cmd = { 'jdtls' },
  settings = {
    java = { signatureHelp = { enabled = true }, contentProvider = { preferred = 'fernflower' } }
  },
  on_init = function(client)
    if client.config.settings then
      client.notify('workspace/didChangeConfiguration', { settings = client.config.settings })
    end
  end,
  root_dir = function(fname)
    return require 'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git', 'meson.build')(fname) or
        vim.fn.getcwd()
  end,
  flags = lspFlags,
}

--sql
require 'lspconfig'.sqlls.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- sintaxis de html
require 'lspconfig'.html.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- scala
require 'lspconfig'.metals.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- bash
require 'lspconfig'.bashls.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- rust
require 'lspconfig'.rls.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- para toml
require 'lspconfig'.taplo.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- para meson
require 'lspconfig'.vala_ls.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- para docker
require 'lspconfig'.dockerls.setup {
  capabilities = capabilities,
  flags = lspFlags,
}

-- para django, astro, edge, eelixir, ruby, vue, svelte
require 'lspconfig'.tailwindcss.setup {
  capabilities = capabilities,
  flags = lspFlags,
  root_dir = function(fname)
    return require 'lspconfig'.util.root_pattern('tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js', 'pyproject.toml')(fname) or
        vim.fn.getcwd()
  end,
}
