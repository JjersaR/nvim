local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.black, -- "python"
  formatting.clang_format, -- "c", "cpp", "cs", "java"
  -- formatting.eslint_d, -- "javascript", "javascriptreact", "typescript", "typescriptreact", "vue"
  formatting.json_tool, -- "json"
  formatting.perltidy, -- "perl"
  formatting.phpcsfixer, --  "php"
  -- formatting.prettier, -- "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html"
  formatting.scalafmt, -- scala
  formatting.rustfmt, -- rust
  diagnostics.flake8, -- diagnostico de python
  formatting.djhtml, -- formato para html django
  diagnostics.djlint, -- diagnostico para html django
}

null_ls.setup({
  sources = sources,
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
      vim.api.nvim_command [[augroup END]]
    end
  end,
})
