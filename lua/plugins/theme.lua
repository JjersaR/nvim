return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = true,
  config = function()
    require("catppuccin").setup({
      default_integrations = true,
      transparent_background = true,
      no_italic = true, -- Force no italic
      no_bold = true, -- Force no bold
      no_underline = true, -- Force no underline
    })
  end,
  {
    "LazyVim/LazyVim",
    opt = {
      colorscheme = "catppuccin",
    },
  },
}
