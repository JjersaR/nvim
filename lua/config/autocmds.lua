-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- quitar espacios
vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- Autocomando para deshabilitar números en terminales
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.wo.number = false -- Desactiva los números normales
    vim.wo.relativenumber = false -- Desactiva los números relativos
  end,
})

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    -- Mapea Esc Esc para salir al modo normal en terminal
    vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { buffer = 0, silent = true })
  end,
})

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

vim.api.nvim_create_user_command("LvimSpaceTabFiles", function()
  local state = require("lvim-space.api.state")
  local data = require("lvim-space.api.data")

  local tab_id = state.tab_active
  local workspace_id = state.workspace_id

  local files = data.find_files(tab_id, workspace_id)

  if not files or vim.tbl_isempty(files) then
    vim.notify("No hay archivos en el tab actual.", vim.log.levels.INFO)
    return
  end

  pickers
    .new({}, {
      prompt_title = "Buffers (LvimSpace)",
      finder = finders.new_table({
        results = files,
        entry_maker = function(entry)
          return {
            value = entry,
            display = entry.name,
            ordinal = entry.name .. " " .. entry.path,
          }
        end,
      }),
      sorter = conf.generic_sorter({}),
      attach_mappings = function(prompt_bufnr, map)
        local function open_file()
          local selection = action_state.get_selected_entry()
          actions.close(prompt_bufnr)
          if selection and selection.value and selection.value.path then
            vim.cmd("edit " .. vim.fn.fnameescape(selection.value.path))
          end
        end

        map("i", "<CR>", open_file)
        map("n", "<CR>", open_file)

        return true
      end,
    })
    :find()
end, {})

vim.keymap.set("n", "<leader>,", function()
  local state = require("lvim-space.api.state")
  local data = require("lvim-space.api.data")

  local tab_id = state.tab_active
  local workspace_id = state.workspace_id
  local files = data.find_files(tab_id, workspace_id)

  if files and #files > 0 then
    vim.cmd("LvimSpaceTabFiles")
  else
    require("snacks.picker").buffers()
  end
end, { desc = "Buffers" })
