local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
  formatting.black, -- "python"
  formatting.clang_format, -- "c", "cpp", "cs", "java"
  formatting.eslint_d, -- "javascript", "javascriptreact", "typescript", "typescriptreact", "vue"
  formatting.json_tool, -- "json"
  formatting.perltidy, -- "perl"
  formatting.phpcsfixer, --  "php"
  formatting.prettier, -- "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html"
  formatting.scalafmt, -- scala
  formatting.rustfmt, -- rust
}

null_ls.setup({
  sources = sources,
  on_attach = function(client)
    if client.supports_method"textDocument/formatting" then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end,
})
