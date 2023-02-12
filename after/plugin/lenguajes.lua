local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
    vim.api.nvim_command [[augroup END]]
  end
end

local lspFlags = {
    debounce_text_changes = 150,
}

--para c, c++ y de más
require 'lspconfig'.clangd.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- para python
require 'lspconfig'.pyright.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

--css
require 'lspconfig'.cssls.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- emmet html y css
require 'lspconfig'.emmet_ls.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

--tsserver
require 'lspconfig'.tsserver.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

--lua
require 'lspconfig'.lua_ls.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
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
    on_attach = on_attach,
}

--sql
require 'lspconfig'.sqlls.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- sintaxis de html
require 'lspconfig'.html.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- scala
require 'lspconfig'.metals.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- bash
require 'lspconfig'.bashls.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- rust
require 'lspconfig'.rust_analyzer.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- para toml
require 'lspconfig'.taplo.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- para meson
require 'lspconfig'.vala_ls.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- para docker
require 'lspconfig'.dockerls.setup {
    capabilities = capabilities,
    flags = lspFlags,
    on_attach = on_attach,
}

-- para django
require 'lspconfig'.tailwindcss.setup {
    filetypes = { 'astro', 'astro-markdown', 'django-html', 'htmldjango', 'svelte' },
    root_dir = function(fname)
      return require 'lspconfig'.util.root_pattern('pyproject.toml', '.git')(fname) or
          vim.fn.getcwd()
    end,
    flags = lspFlags,
    on_attach = on_attach,
}
