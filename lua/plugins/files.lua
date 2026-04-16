return {
  {
    "simonmclean/triptych.nvim",
    cmd = "Triptych",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-tree/nvim-web-devicons", -- optional for icons
      "antosha417/nvim-lsp-file-operations", -- optional LSP integration
    },
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
  },
  {
    "A7Lavinraj/fyler.nvim",
    dependencies = { "nvim-mini/mini.icons" },
    branch = "stable", -- Use stable branch for production
    keys = {
      { "nf", ":Fyler<CR>", desc = "Files", silent = true },
    },
    opts = {
      hooks = {},
      integrations = {
        icon = "mini_icons",
      },
      views = {
        finder = {
          close_on_select = true,
          confirm_simple = true,
          default_explorer = false,
          delete_to_trash = false,
          git_status = {
            enabled = true,
            symbols = {
              Untracked = "?",
              Added = "+",
              Modified = "*",
              Deleted = "x",
              Renamed = ">",
              Copied = "~",
              Conflict = "!",
              Ignored = "#",
            },
          },
          icon = {
            directory_collapsed = " ",
            directory_empty = " ",
            directory_expanded = " ",
          },
          indentscope = {
            enabled = true,
            group = "FylerIndentMarker",
            marker = "│",
          },
          mappings = {
            ["q"] = "CloseView",
            ["l"] = "Select",
            ["<C-t>"] = "SelectTab",
            ["|"] = "SelectVSplit",
            ["-"] = "SelectSplit",
            ["^"] = "GotoParent",
            ["="] = "GotoCwd",
            ["."] = "GotoNode",
            ["#"] = "CollapseAll",
            ["<BS>"] = "CollapseNode",
          },
          mappings_opts = {
            nowait = false,
            noremap = true,
            silent = true,
          },
          follow_current_file = true,
          watcher = {
            enabled = true,
          },
          win = {
            border = vim.o.winborder == "" and "single" or vim.o.winborder,
            buf_opts = {
              filetype = "fyler",
              syntax = "fyler",
              buflisted = false,
              buftype = "acwrite",
              expandtab = true,
              shiftwidth = 2,
            },
            kind = "split_left_most",
            kinds = {
              float = {
                height = "70%",
                width = "70%",
                top = "10%",
                left = "15%",
              },
              replace = {},
              split_above = {
                height = "70%",
              },
              split_above_all = {
                height = "70%",
                win_opts = {
                  winfixheight = true,
                },
              },
              split_below = {
                height = "70%",
              },
              split_below_all = {
                height = "70%",
                win_opts = {
                  winfixheight = true,
                },
              },
              split_left = {
                width = "30%",
              },
              split_left_most = {
                width = "30%",
                win_opts = {
                  winfixwidth = true,
                },
              },
              split_right = {
                width = "30%",
              },
              split_right_most = {
                width = "30%",
                win_opts = {
                  winfixwidth = true,
                },
              },
            },
            win_opts = {
              concealcursor = "nvic",
              conceallevel = 3,
              cursorline = false,
              number = false,
              relativenumber = false,
              winhighlight = "Normal:FylerNormal,NormalNC:FylerNormalNC",
              wrap = false,
              signcolumn = "no",
            },
          },
        },
      },
    },
  },
  {
    "Eutrius/Otree.nvim",
    lazy = false,
    dependencies = {
      -- Optional: Enhanced file operations
      "stevearc/oil.nvim",
      -- Optional: Icon support
      { "nvim-mini/mini.icons", opts = {} },
      -- "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "nt", ":Otree<CR>", desc = "Files", silent = true },
    },
    config = function()
      require("Otree").setup({
        win_size = 50,
        git_signs = true,
        lsp_signs = true,
        oil = "float",
        ignore_paterns = {},
        keymaps = {
          ["q"] = "actions.close_win",
        },
        icons = {
          title = " ",
          default_file = "",
          default_directory = "",
          empty_dir = " ",
          trash = " ",
          keymap = "⌨ ",
          oil = " ",
        },
      })
      require("oil").setup({
        default_file_explorer = false,
        skip_confirm_for_simple_edits = true,
        delete_to_trash = true,
        win_options = {
          wrap = false,
          signcolumn = "no",
          cursorcolumn = false,
          foldcolumn = "0",
          spell = false,
          list = false,
          conceallevel = 3,
          concealcursor = "nvic",
          relativenumber = false,
          number = false,
        },
        lsp_file_methods = {
          -- Enable or disable LSP file operations
          enabled = true,
          -- Time to wait for LSP file operations to complete before skipping
          timeout_ms = 1000,
          -- Set to true to autosave buffers that are updated with LSP willRenameFiles
          -- Set to "unmodified" to only save unmodified buffers
          autosave_changes = true,
        },
        watch_for_changes = true,
        keymaps = {
          ["q"] = { "actions.close", mode = "n" },
        },
      })
    end,
  },
}
