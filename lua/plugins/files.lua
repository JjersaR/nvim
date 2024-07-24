return {
  "simonmclean/triptych.nvim",
  cmd = "Triptych",
  keys = {
    { "nt", ":Triptych<CR>", desc = "Files", silent = true },
  },
  config = function()
    require("triptych").setup({
      mappings = {
        -- Everything below is buffer-local, meaning it will only apply to Triptych windows
        show_help = "g?",
        jump_to_cwd = ".", -- Pressing again will toggle back
        nav_left = "h",
        nav_right = { "l", "<CR>" }, -- If target is a file, opens the file in-place
        open_hsplit = { "-" },
        open_vsplit = { "|" },
        open_tab = { "<C-t>" },
        cd = "<leader>cd",
        delete = "d",
        add = "a",
        copy = "c",
        rename = "r",
        cut = "x",
        paste = "p",
        quit = "q",
        toggle_hidden = "<leader>.",
      },
      extension_mappings = {},
      options = {
        dirs_first = true,
        show_hidden = true,
        line_numbers = {
          enabled = false,
          relative = false,
        },
        file_icons = {
          enabled = true,
          directory_icon = "",
          fallback_file_icon = "",
        },
        responsive_column_widths = {
          ["0"] = { 0, 0.5, 0.5 },
          ["120"] = { 0.2, 0.3, 0.5 },
          ["200"] = { 0.25, 0.25, 0.5 },
        }, -- Must add up to 1 after rounding to 2 decimal places
        highlights = { -- Highlight groups to use. See `:highlight` or `:h highlight`
          file_names = "NONE",
          directory_names = "NONE",
        },
        syntax_highlighting = { -- Applies to file previews
          enabled = true,
          debounce_ms = 100,
        },
        backdrop = 60, -- Backdrop opacity. 0 is fully opaque, 100 is fully transparent (disables the feature)
      },
      git_signs = {
        enabled = true,
        signs = {
          -- The value can be either a string or a table.
          -- If a string, will be basic text. If a table, will be passed as the {dict} argument to vim.fn.sign_define
          -- If you want to add color, you can specify a highlight group in the table.
          add = "+",
          modify = "~",
          rename = "r",
          untracked = "?",
        },
      },
      diagnostic_signs = {
        enabled = true,
      },
    })
  end,
}
