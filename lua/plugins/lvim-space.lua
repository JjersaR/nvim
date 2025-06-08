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
}
