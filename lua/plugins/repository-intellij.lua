return {
  "JjersaR/repository-intellij",
  dir = "~/.config/repository-intellij",
  lazy = true,
  ft = "java",
  config = function()
    require("repository-intellij").setup()
  end,
}
