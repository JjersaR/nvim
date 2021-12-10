vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_symlink_arrow = ' >> '
require'nvim-tree'.setup{
  gitignore = 1,
}
