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
    i = {":LspInfo<cr>", "Connected Language Servers"},
    k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
    K = {"<cmd>Lspsaga hover_doc<cr>", "Hover Commands"},
    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder"},
    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder"},
    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', "List Workspace Folders"},
    t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition"},
    d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
    D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
    r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References"},
    R = {'<cmd>lua require("renamer").rename()<cr>', "Rename"},
    a = {'<cmd>Lspsaga code_action<cr>', "Code Action"},
    e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics"},
    n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic"},
    N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic"},
    f = {':lua vim.lsp.buf.formatting()<CR>', "Format"},
    o = { "<Cmd>lua require'jdtls'.organize_imports()<CR>", "Organize Imports" },
    v = { "<Cmd>lua require('jdtls').extract_variable()<CR>", "Extract Variable" },
    c = { "<Cmd>lua require('jdtls').extract_constant()<CR>", "Extract Constant" },
    u = { "<Cmd>JdtUpdateConfig<CR>", "Update Config" },
    },
  t = { name = "Terminal", t = {":ToggleTerm<CR>", "Split Below"}, f = {toggle_float, "Floating Terminal"}, l = {toggle_lazygit, "LazyGit"} },
  e = {
    name = "Errores",
    x = {":TroubleToggle<CR>", "Errores"}, 
    f = {":TroubleRefresh<CR>", "Actualizar errores"}, 
    d = {":TroubleToggle document_diagnostics<CR>", "Documentacion de errores"}, 
    l = {":TroubleToggle loclist<CR>", "Localizar errores"}, 
  },
  c = {
    name = "ComProgramming",
    t = {":CphTest<CR>", "Hacer test"},
    d = {":CphDelete<CR>", "Borrarlo"},
    e = {":CphEdit ", "Editar"},
    r = {":CphRetest<CR>", "Rehacer test"},
    R = {":CphReceive<CR>", "Receive"},
    s = {":CphStop<CR>", "Parar"},
  },
  p = {
    name = "Packer",
    r = { ":PackerClean<cr>", "Remove Unused Plugins" },
    c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
    i = { ":PackerInstall<cr>", "Install Plugins" },
    p = { ":PackerProfile<cr>", "Packer Profile" },
    s = { ":PackerSync<cr>", "Sync Plugins" },
    S = { ":PackerStatus<cr>", "Packer Status" },
    u = { ":PackerUpdate<cr>", "Update Plugins" }
  },
}
local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
