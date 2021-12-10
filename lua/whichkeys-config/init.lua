local wk = require("which-key")

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

local toggle_lazygit = function()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
  return lazygit:toggle()
end

local mappings = {
  q = {":q<CR>", "Salir"},
  w = {":w<CR>", "Guardar"},
  Q = {":wq<CR>", "Sav. & Close"},
  x = {":bdelete<CR>", "Cerrar"},
  E = {":e ~/.config/nvim/init.lua<CR>", "Ir a init"},

  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Conectar servidor"},
    A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Añadir workspace"},
    R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remover workspace"},
    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "Listar workspace"},
    D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Tipo de definicion"},
    r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Renombrar"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"}
  },
  t = { t = {":ToggleTerm<CR>", "Split Below"}, f = {toggle_float, "Floating Terminal"}, l = {toggle_lazygit, "LazyGit"} },
  s ={
    name = "Saga",
    l = {'', "Buscador"},
    c = {'', "code action"},
    h = {'', "Hover doc"},
    s = {'', "Que hace?"},
    p = {'', "Def. Vista previa"},
    d = {'', "Diagnostico"},
  }
}
local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
