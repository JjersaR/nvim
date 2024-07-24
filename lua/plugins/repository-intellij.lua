return {
  "JjersaR/repository-intellij",
  dir = "~/.config/repository-intellij",
  lazy = false,
  ft = "java",
  config = function()
    require("repository-intellij").setup()
  end,
}
