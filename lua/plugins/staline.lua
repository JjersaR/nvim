return {
  "tamton-aquib/staline.nvim",
  event = { "VeryLazy", "UIEnter" },
  config = function()
    local staline = require("staline")
    local percentage = function()
      local current_line = vim.fn.line(".")
      local total_lines = vim.fn.line("$")
      local chars = {
        "__",
        "▁▁",
        "▂▂",
        "▃▃",
        "▄▄",
        "▅▅",
        "▆▆",
        "▇▇",
        "██",
      }
      local line_ratio = current_line / total_lines
      local index = math.ceil(line_ratio * #chars)
      return chars[index]
    end
    -- Función personalizada para obtener el estado de Git
    local git_status = function()
      local git_cmd = "git diff --shortstat 2> /dev/null"
      local handle = io.popen(git_cmd)
      local result = handle:read("*a")
      handle:close()

      if result == "" then
        return ""
      end

      local added = tonumber(result:match("(%d+) insertions?")) or 0
      local deleted = tonumber(result:match("(%d+) deletions?")) or 0
      local modified = tonumber(result:match("(%d+) files? changed")) or 0

      local git_info = string.format("[F]%d [I]%d [D]%d", modified, added, deleted)
      return "%#StalineName#" .. git_info .. "%#Normal#"
    end

    local my_colors = { n = "#9CCFD8", i = "#9CCFD8", c = "#9CCFD8", v = "#9CCFD8", t = "#9CCFD8" }

    staline.setup({
      sections = {
        left = {
          "mode",
          { "StalineBranch", "file_name" },
          { "StalineBranch", "branch" },
        },
        mid = { "lsp" },
        right = { git_status, " ", "lsp_name", "  ", percentage },
      },
      defaults = {
        true_colors = true, -- LSP highlighing
        font_active = "none",
        branch_symbol = " ", -- branch symbol
        mod_symbol = "  ", -- modified symbol
      },
      mode_icons = {
        ["n"] = " ",
        ["no"] = " ",
        ["nov"] = " ",
        ["noV"] = " ",
        ["niI"] = " ",
        ["niR"] = " ",
        ["niV"] = " ",
        ["i"] = " ",
        ["ic"] = " ",
        ["ix"] = " ",
        ["s"] = " ",
        ["S"] = " ",
        ["v"] = " ",
        ["V"] = " ",
        [""] = " ",
        ["r"] = " ",
        ["r?"] = " ",
        ["R"] = " ",
        ["c"] = "גּ ",
        ["t"] = " ",
      },
      mode_colors = my_colors, -- Change mode colors
      special_table = {
        NvimTree = { "File Explorer", " " },
        packer = { "Packer", " " },
        TelescopePrompt = { "Telescope", " " },
      },
      lsp_symbols = { Error = " ", Info = " ", Warn = " ", Hint = " " },
    })
    vim.cmd([[hi StalineBranch guifg=#C4A7E7]])
    vim.cmd([[hi StalineName guifg=#EBBCBA]])
  end,
}
