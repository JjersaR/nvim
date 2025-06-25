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
