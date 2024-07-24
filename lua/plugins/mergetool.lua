return {
  "samoshkin/vim-mergetool",
  keys = {
    { "<Leader>Cm", ":MergetoolToggle<CR>", desc = "Merge Conflict", silent = true },
  },
  config = function()
    vim.cmd([[let g:mergetool_layout = 'mr']])
  end,
}
