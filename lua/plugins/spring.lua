return {
  "javiorfo/nvim-springtime",
  lazy = true,
  cmd = { "Springtime", "SpringtimeUpdate" },
  dependencies = {
    "javiorfo/nvim-popcorn",
    "javiorfo/nvim-spinetta",
    "hrsh7th/nvim-cmp",
  },
  opts = {
    spring = {
      project = { selected = 3 }, -- maven
    },
    dialog = {
      selection_keymap = "<CR>",
    },
  },
  config = function()
    require("springtime.core").update()
  end,
}
