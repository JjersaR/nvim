return {
  "JjersaR/test-java",
  lazy = true,
  ft = "java",
  keys = {
    { "<Leader>t", "", desc = " Test", silent = true },
    { "<Leader>tm", ":lua require('test-java').run_test_at_cursor()<CR>", desc = " Test Method", silent = true },
    { "<Leader>tf", ":lua require('test-java').run_current_file_tests()<CR>", desc = " Test File", silent = true },
    {
      "<Leader>td",
      ":lua require('test-java').run_test_at_cursor_details()<CR>",
      desc = " Method Details",
      silent = true,
    },
  },
}
