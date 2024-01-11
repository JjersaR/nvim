-- require("bufferline").setup {}
-- vim.cmd [[
-- nnoremap <silent><TAB> :BufferLineCycleNext<CR>
-- nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
-- tnoremap <silent><TAB> <C-\><C-N><C-w>:BufferLineCycleNext<CR>
-- tnoremap <silent><S-TAB> <C-\><C-N><C-w>:BufferLineCyclePrev<CR>
-- ]]
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
