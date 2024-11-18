return {
  "EL-MASTOR/bufferlist.nvim",
  lazy = true,
  keys = { { "gb", ":BufferList<CR>", desc = "Open bufferlist", silent = true } },
  dependencies = "nvim-tree/nvim-web-devicons",
  cmd = "BufferList",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
