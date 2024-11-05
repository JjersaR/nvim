return {
  "zeioth/garbage-day.nvim",
  dependencies = "neovim/nvim-lspconfig",
  event = "VeryLazy",
  opts = {
    aggressive_mode = true,
    excluded_lsp_clients = {
      "jdtls",
      "vtsls",
    },
  },
}
