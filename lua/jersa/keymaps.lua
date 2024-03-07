-- tecla lider
vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })

-- función para mapear las cosas
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

-- atajos personalizados
mapper("n", "<C-s>", ":w<CR>")
mapper("i", "<C-s>", "<Esc><Esc>:w<CR>")
mapper("n", "<C-q>", ":q<CR>")
mapper("i", "jj", "<Esc>")
mapper("n", "0", "^")
mapper("n", "Y", "y$")
mapper("n", "<C-w>", ":bdelete<CR>")

-- quitar espacios
vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- duplicar lineas
mapper("n", "tt", ":t.<CR>")

-- Files
mapper("n", "nt", ":Oil --float<CR>")

-- mover lineas
mapper("v", "<", "<gv")
mapper("v", ">", ">gv")

-- subir las lineas +1
mapper("v", "J", ":m '>+1<CR>gv=gv")
mapper("v", "K", ":m '<-2<CR>gv=gv")

-- para moverse en lspsaga
map(
	"n",
	"<C-u>",
	"<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
	{ noremap = true, silent = true }
)
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", { noremap = true, silent = true })

-- para comentar lineas
mapper("n", "//", ":CommentToggle<CR>")

-- ver estructura
mapper("n", "T", ":TagbarToggle<CR>")

-- abrir terminal
mapper("n", "<C-t>", ":TmanCmd<CR>")

-- runner
function Build()
	-- execute cpp
	if vim.bo.filetype == "cpp" then
		if vim.fn.isdirectory("build") == 0 then
			vim.cmd("terminal meson setup build && cd build && ninja && ./exe")
		else
			vim.cmd("terminal meson compile -C build && ./build/exe")
		end
	end

	-- execute java
	if vim.bo.filetype == "java" then
		vim.cmd("terminal gradle run")
	end

	-- execute python
	if vim.bo.filetype == "python" then
		vim.cmd("terminal python %")
	end

	-- execute rust
	if vim.bo.filetype == "rust" then
		vim.cmd("terminal cargo run")
	end
end

mapper("n", "<C-CR>", ":lua Build()<CR>")

-- moverte estando en terminal
vim.cmd([[
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
]])

-- comandos para merge
mapper("n", "<C-Left>", ":MergetoolDiffExchangeLeft<CR>")
mapper("n", "<C-Right>", ":MergetoolDiffExchangeRight<CR>")
mapper("n", "<C-Down>", ":MergetoolDiffExchangeDown<CR>")
mapper("n", "<C-Up>", ":MergetoolDiffExchangeUp<CR>")
