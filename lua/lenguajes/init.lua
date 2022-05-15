local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--para c, c++ y de más
require'lspconfig'.clangd.setup{
  capabilities = capabilities,
}

-- para python
require'lspconfig'.pyright.setup{
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
  cmd = { 'jdtls' }
}

--angular
require'lspconfig'.angularls.setup{
  capabilities = capabilities,
}

--sql
require'lspconfig'.sqlls.setup{
  capabilities = capabilities
}

--vuels
require'lspconfig'.vuels.setup{
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
