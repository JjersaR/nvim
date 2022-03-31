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
require('trouble-config')
require('nulls-ls-config')
require('reach-config')
require('comment-config')
require('rename-config')

--moon
--vim.cmd[[colorscheme blue-moon]]

--catppuccin
vim.cmd[[colorscheme catppuccin]]
