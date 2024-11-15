return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    routes = {
      filter = {
        event = "lsp",
        kind = "progress",
        cond = function(message)
          local client = vim.tbl_get(message.opts, "progress", "client")
          if client == "jdtls" then
            local content = vim.tbl_get(message.opts, "progress", "message")
            return content == "Validate documents"
          end

          return false
        end,
      },
      opts = { skip = true },
    },
  },
}
