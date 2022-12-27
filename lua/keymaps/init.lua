-- tecla lider
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

-- función para mapear las cosas
local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

-- atajos personalizados
mapper("n", "<C-s>", ":w<CR>")
mapper("i", "<C-s>", "<Esc><Esc>:w<CR>")
mapper("n", "<C-q>", ":qa<CR>")
mapper("n", "<Leader>qq", ":q!<CR>")
mapper("i", "jj", "<Esc>")
mapper("n", "0", "^")
mapper("n", "Y", "y$")
mapper("n", '<C-w>', ':bdelete<CR>')

-- quitar espacios
vim.cmd [[autocmd BufWritePre * :%s/\s\+$//e]]

-- ranger
mapper("n", "fn", ":RnvimrToggle<CR>")

-- duplicar lineas
mapper("n", "tt", ":t.<CR>")

-- para el arbol
mapper("n", "nt", ":NvimTreeOpen<CR>")

-- mover lineas
mapper('v', '<', '<gv')
mapper('v', '>', '>gv')

-- subir las lineas +1
mapper("v", "J", ":m '>+1<CR>gv=gv")
mapper("v", "K", ":m '<-2<CR>gv=gv")

-- opciones de pegado
mapper("n", "<Leader>y", "\"+y")
mapper("v", "<Leader>y", "\"+y")
mapper("n", "<Leader>Y", "\"+Y")

-- para moverse en lspsaga
map("n", "<C-u>",
  "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
  { noremap = true, silent = true })
map("n", "<C-d>",
  "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>",
  { noremap = true, silent = true })

-- para reach
mapper("n", "ro", ":ReachOpen buffers<CR>")

-- para comentar lineas
mapper("n", "//", ":CommentToggle<CR>")

-- para ver estructura
mapper("n", "T", ":TagbarToggle<CR>")

-- para spectre
mapper("n", "so", "<cmd>lua require('spectre').open()<CR>")

-- refactorizar en nuevo archivo
mapper("v", "<Leader>rb", "[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]]")
