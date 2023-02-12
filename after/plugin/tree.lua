require 'nvim-tree'.setup {
  actions = { open_file = { quit_on_open = true } },
  diagnostics = { enable = true },
  git = { enable = true },
  renderer = { highlight_opened_files = "all" },
}
