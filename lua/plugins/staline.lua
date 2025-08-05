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

    local function get_lvim_space_display()
      local status_ok, lvim_space = pcall(require, "lvim-space.pub")
      if not status_ok then
        return nil -- No mostrar nada si el plugin no está cargado
      end

      local tab_info = lvim_space.get_tab_info()
      local active_tab = nil

      -- Buscar el tab activo
      for _, tab in ipairs(tab_info.tabs or {}) do
        if tab.active then
          active_tab = tab.name
          break
        end
      end

      -- Solo retornar texto si hay workspace Y tab activo
      if tab_info.workspace_name and active_tab then
        return string.format(
          "%%#StalineSpaceWS#%s %%#StalineSpaceWS#> %s%%#Normal# %%#StalineSpaceWS#>%%#Normal#",
          tab_info.workspace_name,
          active_tab
        )
      end

      return nil -- Ocultar sección si falta información
    end

    local my_colors = { n = "#9CCFD8", i = "#9CCFD8", c = "#9CCFD8", v = "#9CCFD8", t = "#9CCFD8" }

    staline.setup({
      sections = {
        left = {
          function()
            return get_lvim_space_display() or ""
          end,
          { "StalineBranch", "file_name" },
          { "StalineBranch", "branch" },
        },
        mid = { "lsp" },
        right = {
          git_status,
          "  ",
          percentage,
        },
      },
      defaults = {
        true_colors = true, -- LSP highlighing
        font_active = "none",
        branch_symbol = " ", -- branch symbol
        mod_symbol = "  ", -- modified symbol
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
    vim.cmd([[hi StalineSpaceWS guifg=#9CCFD8]]) -- Color para el workspace
    vim.cmd([[hi StalineSpaceTab guifg=#C4A7E7]]) -- Color para el tab
  end,
}
