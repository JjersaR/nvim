return {
  "lvim-tech/lvim-space",
  dependencies = {
    "kkharji/sqlite.lua",
  },
  config = function()
    require("lvim-space").setup({
      -- Your configuration here
    })
  end,
  opts = {
    keymaps = {
      vim.keymap.set({ "n", "t" }, "<leader>ll", "<Cmd>LvimSpace<CR>"),
    },
  },
}
