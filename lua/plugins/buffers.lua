return {
  "j-morano/buffer_manager.nvim",
  keys = {
    { "<Leader>b", ":lua require('buffer_manager.ui').toggle_quick_menu()<CR>", desc = "Buffer", silent = true },
  },
  config = function()
    require("buffer_manager").setup({
      select_menu_item_commands = {
        v = {
          key = "<C-v>",
          command = "vsplit",
        },
        h = {
          key = "<C-h>",
          command = "split",
        },
      },
      short_file_names = true,
      short_term_names = true,
    })
  end,
}
