-- acelerar tiempos de neovim
local _impatient, impatient = pcall(require, "impatient")

if _impatient then
    impatient.enable_profile()
end

-- instalar packer
if require "first_load"() then
  return
end

-- los plugins
require('plugins')

-- configuracion y atajos
require('settings')
require('keymaps')

-- conf de los plugins
require('staline-config')
require('treesitter-config')
require('bufferline-config')
require('tree-config')
require('telescope-config')
require('cmp-config')
require('lsp-config')
require('lenguajes')
require('lspsaga-config')
require('autopairs-config')
require('whichkeys-config')
require('toggleterm-config')
require('blankline-config')
require('gitsigns-config')
require('dashboard-config')
require('rnvimr-config')
require('nulls-ls-config')
require('reach-config')
require('comment-config')
require('rename-config')
require('transparent-config')
require('spectre-config')
require('dadbod-config')
require('signature-config')
require('sqls-config')
require('mason-config')
require('clangdExtension-config')
require('refactoring-config')

-- catppuccin
vim.g.catppuccin_flavour = "mocha"
vim.cmd [[colorscheme catppuccin]]
