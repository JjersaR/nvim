return {
  { "nvim-lualine/lualine.nvim", enabled = false },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
    keys = { { "<Leader>b", false }, { "<Leader>bb", false }, { "<Leader>bd", false }, { "<Leader>bD", false } },
  },
  { "nvim-tree/nvim-tree.lua", enabled = false },
  { "nvimdev/dashboard-nvim", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
