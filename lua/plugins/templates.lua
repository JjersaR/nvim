return {
  "otavioschwanck/new-file-template.nvim",
  ft = { "java" },
  opts = {},
  config = function()
    require("new-file-template").setup({
      disable_insert = true,
      -- disable_autocmd = true,
    })
  end,
}
