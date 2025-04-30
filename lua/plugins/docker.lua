return {
  "crnvl96/lazydocker.nvim",
  opts = {
    keymaps = {
      vim.keymap.set({ "n", "t" }, "<leader>ld", "<Cmd>lua LazyDocker.toggle()<CR>"),
    },
  },
}
