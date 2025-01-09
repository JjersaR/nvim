return {
  "grecodavide/file_browser.nvim",
  dependencies = {
    "echasnovski/mini.icons", -- to display file icons
  },
  lazy = true,
  keys = {
    {
      "<leader>fe",
      function()
        require("file_browser").open(vim.fn.expand("%:p:h"))
      end,

      desc = "[F]ile [E]xplorer current file",
    },
    {
      "<leader>fE",
      ":FileBrowser<CR>",

      desc = "[F]ile [E]xplorer CWD",
    },
  },
}
