return {
  "JjersaR/spring-endpoints",
  dependencies = {
    { "nvim-telescope/telescope.nvim", lazy = false },
  },
  lazy = true,
  ft = "java",
  keys = {
    { "<Leader>s", "", desc = "Spring Boot", silent = true },
    { "<Leader>se", ":lua require('spring_endpoints').search()<CR>", desc = "[E]nd Points", silent = true },
  },
}
