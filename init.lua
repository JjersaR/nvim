-- los plugins
require('plugins')

-- configuracion y atajos
require('settings')
require('keymaps')

-- conf de los plugins
require('lualine-config')
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

--tema
--vim.cmd[[colorscheme nord]]

--tema tokyodark
--vim.g.tokyodark_transparent_background = false
--vim.g.tokyodark_enable_italic_comment = true
--vim.g.tokyodark_enable_italic = true
--vim.g.tokyodark_color_gamma = "1.0"
--vim.cmd("colorscheme tokyodark")

--tema neon
--vim.cmd[[colorscheme neon]]
--vim.g.neon_style = "Doom"

--moon
vim.cmd[[colorscheme blue-moon]]
