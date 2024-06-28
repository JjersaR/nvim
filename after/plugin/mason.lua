require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})
require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "google-java-format",
    "jdtls",
    "lua-language-server",
    "stylua",
    "pyright",
    "black",
    "flake8",
    "sonarlint-language-server",
  },
  automatic_installation = true,
})
