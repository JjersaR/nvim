-- tecla lider
vim.g.mapleader = ' '

--para moverte entre ventanas
local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

--función para no teclear lo de la linea 6
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

--atajos personalizados
mapper("n","w", ":w<CR>")
mapper("n","q", ":q<CR>")
mapper("n","qq", ":wq<CR>")
mapper("n","<Leader>qq", ":q!<CR>")
mapper("i","jj", "<Esc>")

--duplicar lineas
mapper("n","tt", ":t.<CR>")
mapper("n","P", ":PackerSync<CR>")

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

--lspsaga
mapper('n','gh', ':Lspsaga lsp_finder<CR>')
mapper('n','ca', ':Lspsaga code_action<CR>')
mapper('n','K', ':Lspsaga hover_doc<CR>')
mapper('n','gs', ':Lspsaga signature_help<CR>')
mapper('n','gd', ':Lspsaga preview_definition<CR>')
mapper('n','dn', ':Lspsaga diagnostic_jump_next<CR>')
mapper('n','dp', ':Lspsaga diagnostic_jump_prev<CR>')
