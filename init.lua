-- acelerar tiempos de neovim
pcall(require,"impatient")

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

-- moon
-- vim.cmd[[colorscheme blue-moon]]

-- catppuccin
vim.cmd [[colorscheme catppuccin]]
