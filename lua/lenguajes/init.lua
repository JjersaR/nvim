local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--para c, c++ y de más
require'lspconfig'.clangd.setup{
  capabilities = capabilities,
}

-- para python
require'lspconfig'.jedi_language_server.setup{
  capabilities = capabilities,
}

--css
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

-- emmet html y css
require'lspconfig'.emmet_ls.setup{
  capabilities = capabilities,
}

--tsserver
require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
}

--lua
require'lspconfig'.sumneko_lua.setup{
  capabilities = capabilities,
}

--java
require'lspconfig'.jdtls.setup{
  capabilities = capabilities,
  cmd = { 'jdtls' },
   settings = {
      java = {signatureHelp = {enabled = true}, contentProvider = {preferred = 'fernflower'}}
    },
    on_init = function(client)
      if client.config.settings then
        client.notify('workspace/didChangeConfiguration', {settings = client.config.settings})
      end
    end,
  root_dir = function(fname)
    return require'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
   end
}

--sql
require'lspconfig'.sqlls.setup{
  capabilities = capabilities
}

-- sintaxis de html
require'lspconfig'.html.setup {
  capabilities = capabilities,
}

-- scala
require'lspconfig'.metals.setup{
  capabilities = capabilities,
}

-- bash
require'lspconfig'.bashls.setup{
  capabilities = capabilities,
}

-- rust
require'lspconfig'.rls.setup{
  capabilities = capabilities,
}

-- para toml
require'lspconfig'.taplo.setup{
  capabilities = capabilities,
}

-- para meson
require'lspconfig'.vala_ls.setup{
  capabilities = capabilities,
}
