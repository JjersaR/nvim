local wk = require("which-key")

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end

local toggle_lazygit = function()
  local lazygit = Terminal:new({ cmd = 'lazygit', direction = "float" })
  return lazygit:toggle()
end

local mappings = {
  q = { ":q<CR>", "Salir" },
  w = { ":w<CR>", "Guardar" },
  Q = { ":wq<CR>", "Sav. & Close" },
  E = { ":e ~/.config/nvim/init.lua<CR>", "Ir a init" },
  x = { "<cmd>!chmod +x %<CR>", "Ejecutable" },

  l = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
    w = {
      '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>',
      "Add Workspace Folder"
    },
    W = {
      '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>',
      "Remove Workspace Folder"
    },
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition" },
    d = { '<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition" },
    D = { '<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration" },
    r = { '<cmd>lua vim.lsp.buf.references()<cr>', "References" },
    R = { '<cmd>lua require("renamer").rename()<cr>', "Rename" },
    a = { '<cmd>Lspsaga code_action<cr>', "Code Action" },
    e = { '<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics" },
    n = { '<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic" },
    N = {
      '<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic"
    },
    f = { ':lua vim.lsp.buf.format {async = true}<CR>', "Format" },
    j = {
      name = "Java",
      o = {
        "<Cmd>lua require'jdtls'.organize_imports()<CR>", "Organize Imports"
      },
      v = {
        "<Cmd>lua require('jdtls').extract_variable()<CR>",
        "Extract Variable"
      },
      c = {
        "<Cmd>lua require('jdtls').extract_constant()<CR>",
        "Extract Constant"
      },
      u = { "<Cmd>JdtUpdateConfig<CR>", "Update Config" },
      t = { ":JCgenerateToString<CR>", "Generate toString" },
      s = { ":JCgenerateAccessorGetter<CR>", "Generate Setter" },
      g = { ":JCgenerateAccessorGetter<CR>", "Generate Getter" },
      a = { ":JCgenerateAccessorSetterGetter<CR>", "Generate Getter and Setter" },
      h = { ":JCgenerateHashCodeAndEquals<CR>", "Generate Hash and Equals" },
      C = { ":JCgenerateConstructor<CR>", "Generate Constructor" },
      m = { ":JCgenerateAbstractMethods<CR>", "Generate Abstract Methods" },
    },
    p = {
      name = 'Python',
      d = { ':Pydocstring<CR>', 'Docstring' }
    },
    g = {
      name = 'gotoPreview',
      d = { "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", 'Go to Definition' },
      t = { "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", 'Go to Type Definition' },
      i = { "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", 'Go to Implementation' },
      c = { "<cmd>lua require('goto-preview').close_all_win()<CR>", 'Close all Win' },
      r = { "<cmd>lua require('goto-preview').goto_preview_references()<CR>", 'Go to References' }
    }
  },
  t = {
    name = "Terminal",
    t = { ":ToggleTerm<CR>", "Split Below" },
    f = { toggle_float, "Floating Terminal" },
    l = { toggle_lazygit, "LazyGit" },
    v = { ":ToggleTerm direction=vertical size=100<CR>", "Vertical Terminal" }
  },
  b = {
    name = "Database",
    o = { ":tab DBUI<CR>", "Open" },
    A = { ":DBUIAddConnection<CR>", "Add connection" },
    r = { ":DBUIRenameBuffer<CR>", "Rename Buffer" },
    i = { ":DBUILastQueryInfo<CR>", "Last Query Info" },
    c = { ":tabclose<CR>", "Close" },
  },
  f = {
    name = 'Telescope',
    f = { "<cmd>lua require('telescope.builtin').find_files()<CR>", 'Find Files' },
    g = { ':Telescope live_grep<CR>', 'Find Words' },
    b = { ':Telescope buffers<CR>', 'Find Buffers' },
    h = { ':Telescope help_tags<CR>', 'Find Command' },
    s = { ':Telescope git_status<CR>', 'Git Status' },
    d = { ':Telescope diagnostics<CR>', 'Diagnostics' }
  },
  i = {
    name = "ide",
    n = { ":Workspace TerminalBrowser New<CR>", "New Term" },
    t = { ":Workspace TerminalBrowser Focus<CR>", "Focus Term" },
    o = { ":Workspace Outline Focus<CR>", "Outline Focus" },
    b = { ":Workspace BufferList Focus <CR>", "Buffer Focus" }
  },
  p = {
    name = 'Lazy',
    h = { ":Lazy home<CR>", "Lazy Home" },
    i = { ":Lazy update<CR>", "Lazy Update" },
    s = { ":Lazy sync<CR>", "Lazy Sync" },
    c = { ":Lazy clean<CR>", "Lazy Clean" },
    p = { ":Lazy profile<CR>", "Lazy Profile" },
  },
  g = {
    name = "Git", ":G<CR>", "Git status"
  },
}
local opts = { prefix = '<leader>' }

wk.register(mappings, opts)
