return {
  "akinsho/toggleterm.nvim",
  lazy = false,
  keys = {
    { "<Leader>C", ":ToggleTerm direction=float<CR>", desc = "Terminal", silent = true },
    { "<Leader>Ct", ":ToggleTerm<CR>", desc = "Split Below", silent = true },
    { "<Leader>Cf", ":ToggleTerm direction=float<CR>", desc = "Floating Terminal", silent = true },
  },
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-t>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = "1",
      start_in_insert = true,
      persist_size = true,
    })
  end,
}
