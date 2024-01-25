require("buffer_manager").setup({
  select_menu_item_commands = {
    v = {
          key = "<C-v>",
          command = "vsplit"
        },
        h = {
          key = "<C-h>",
          command = "split"
        }
    },
  short_file_names = true,
  short_term_names = true,
})
