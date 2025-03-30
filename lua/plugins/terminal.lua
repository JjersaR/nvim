return {
  "voldikss/vim-floaterm",
  config = function()
    vim.g.floaterm_wintype = "float"
    vim.g.floaterm_height = 0.7
    vim.g.floaterm_width = 0.9
    vim.g.floaterm_autoclose = 1
    vim.g.floaterm_title = "─($1/$2)─Terminal─"
    vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
  end,
  lazy = true,
  cmd = { "FloatermOpen", "FloatermToggle", "FloatermNew" },
  keys = {
    { "<C-t>", "<cmd>FloatermNew --wintype=split --height=0.4<cr>", desc = "Terminal in split mode" },
    { "<F8>", mode = { "n", "t" }, ":FloatermKill<cr>", desc = "Kill terminal" },
    { "<F9>", mode = { "n", "t" }, "<cmd>FloatermNew<cr>", desc = "New terminal" },
    { "<F10>", mode = { "n", "t" }, "<cmd>FloatermToggle<cr>", desc = "Toggle terminal" },
    { "<F11>", mode = { "n", "t" }, "<cmd>FloatermPrev<cr>", desc = "Prev terminal" },
    { "<F12>", mode = { "n", "t" }, "<cmd>FloatermNext<cr>", desc = "Next terminal" },
  },
}
