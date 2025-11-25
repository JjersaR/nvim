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
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  --{ "nvim-telescope/telescope.nvim", enabled = false },
  { "saghen/blink.cmp", enabled = false },
  -- { "hrsh7th/nvim-cmp", enabled = false },
  { "zeioth/garbage-day.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },
  { "simonmclean/triptych.nvim", enabled = false },
  { "oribarilan/lensline.nvim", enabled = false },
}
