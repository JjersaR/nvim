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

-- Función para ejecutar el comando de Maven
local function run_maven_reload()
  -- Cambia este comando por el que necesites para recargar la configuración de Spring Boot
  local command = "mvn clean install -DskipTests"
  vim.fn.jobstart(command, {
    on_stdout = function(_, data)
      if data then
        vim.api.nvim_out_write(table.concat(data, "\n") .. "\n")
      end
    end,
    on_stderr = function(_, data)
      if data then
        vim.api.nvim_err_write(table.concat(data, "\n") .. "\n")
      end
    end,
  })
end

-- Autocomando para detectar cambios en pom.xml o application.yml
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "pom.xml", "application.yml" },
  callback = function()
    run_maven_reload()
  end,
})
