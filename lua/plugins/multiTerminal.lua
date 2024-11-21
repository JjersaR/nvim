return {
  "s1n7ax/nvim-terminal",
  lazy = false,
  keys = {
    { "<Leader>;", ":lua NTGlobal['terminal']:toggle()<CR>", desc = "Terminal", silent = true },
    { "<Leader>;f", ":ToggleTerm direction=float<CR>", desc = "Terminal Float", silent = true },
    { "<Leader>;1", ":lua NTGlobal['terminal']:open(1)<CR>", desc = "Terminal 1", silent = true },
    { "<Leader>;2", ":lua NTGlobal['terminal']:open(2)<CR>", desc = "Terminal 2", silent = true },
    { "<Leader>;3", ":lua NTGlobal['terminal']:open(3)<CR>", desc = "Terminal 3", silent = true },
    { "<Leader>;4", ":lua NTGlobal['terminal']:open(4)<CR>", desc = "Terminal 4", silent = true },
    { "<Leader>;5", ":lua NTGlobal['terminal']:open(5)<CR>", desc = "Terminal 5", silent = true },
  },
  config = function()
    vim.o.hidden = true
    require("nvim-terminal").setup({
      window = {
        -- Do `:h :botright` for more information
        position = "botright",

        -- Do `:h split` for more information
        split = "sp",

        -- Width of the terminal
        width = 50,

        -- Height of the terminal
        height = 12,
      },
      disable_default_keymaps = true,
    })
  end,
}
