-- tecla lider
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

--función para mapear las cosas
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

--atajos personalizados
mapper("n","<C-s>", ":w<CR>")
mapper("i","<C-s>", "<Esc><Esc>:w<CR>")
mapper("n","<C-q>", ":q<CR>")
mapper("n","<Leader>qq", ":q!<CR>")
mapper("i","jj", "<Esc>")
mapper("n","0", "^")
mapper("n","Y", "y$")

--ranger
mapper("n","fn", ":RnvimrToggle<CR>")

--duplicar lineas
mapper("n","tt", ":t.<CR>")

--para el arbol
mapper("n","nt", ":NvimTreeOpen<CR>")

--telescope
mapper("n","ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
mapper("n","fg", ":Telescope live_grep<CR>")
mapper("n","fb", ":Telescope buffers<CR>")
mapper("n","fh", ":Telescope help_tags<CR>")
mapper("n","fr", ":Telescope file_browser<CR>")

--mover lineas
mapper('v','<', '<gv')
mapper('v','>', '>gv')

--para moverse en lspsaga
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", {noremap = true, silent = true})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", {noremap = true, silent = true})

-- para reach
mapper("n", "ro", ":ReachOpen buffers<CR>")

-- para comentar lineas
mapper("n", "<Leader>t", ":CommentToggle<CR>")

-- para ver estructura
mapper("n", "<Leader>so", ":SymbolsOutline<CR>")
