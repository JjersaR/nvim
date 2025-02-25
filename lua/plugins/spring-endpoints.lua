return {
  "JjersaR/spring_endpoints",
  dir = "~/.config/spring-endpoints",
  dependencies = {
    --{ "nvim-telescope/telescope.nvim", lazy = false },
  },
  config = function()
    require("spring_endpoints")
  end,
  keys = {
    { "<Leader>s", "", desc = "Spring Boot", silent = true },
    { "<Leader>se", ":lua require('spring_endpoints').search()<CR>", desc = "[E]nd Points", silent = true },
  },
}
