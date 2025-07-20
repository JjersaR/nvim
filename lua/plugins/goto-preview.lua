return {
  "rmagatti/goto-preview",
  dependencies = { "rmagatti/logger.nvim" },
  event = "BufEnter",
  config = true,
  keys = {
    { "<leader>cg", "", desc = " Goto Preview", silent = true },
    {
      "<leader>cgd",
      "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
      desc = " Goto Definition",
      silent = true,
    },
    {
      "<leader>cgt",
      "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
      desc = " Goto Type Definition",
      silent = true,
    },
    {
      "<leader>cgi",
      "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
      desc = " Goto Implementation",
      silent = true,
    },
    {
      "<leader>cgD",
      "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
      desc = " Goto Declaration",
      silent = true,
    },
    {
      "<leader>cgr",
      "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
      desc = " Goto References",
      silent = true,
    },
    {
      "<leader>cgc",
      "<cmd>lua require('goto-preview').close_all_win()<CR>",
      desc = " Close Win",
      silent = true,
    },
  },
  opts = {
    keymaps = {
      vim.keymap.set("n", "<leader>cgo", function()
        vim.cmd("vert botright split")
        require("goto-preview").close_all_win()
      end, { desc = " Open Win", silent = true }),
    },
  },
}
