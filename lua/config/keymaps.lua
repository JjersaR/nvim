-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- mis mapeos
map("n", "<C-q>", "<cmd>qa<cr>", { desc = "Quit All" })
map("i", "jj", "<Esc><Esc>", { desc = "Normal Mode" })
map("n", "0", "^", { desc = "Line start" })
map("n", "Y", "y$", { desc = "Copy line end" })
map("n", "<C-w>", ":bdelete<CR>", { desc = "Delete Buffer" })
map("n", "tt", ":t.<CR>", { desc = "duplicate lines" })

-- maven
map("n", "<Leader>m", ":Maven<CR>", { desc = " Maven" })

-- git conflict
map("n", "<Leader>gC", "", { desc = "Git Conflicts" })
map("n", "<Leader>gCo", ":GitConflictChooseOurs<CR>", { desc = "Choose Ours" })
map("n", "<Leader>gCt", ":GitConflictChooseTheirs<CR>", { desc = "Choose Theirs" })
map("n", "<Leader>gCb", ":GitConflictChooseBoth<CR>", { desc = "Choose Both" })
map("n", "<Leader>gCn", ":GitConflictChooseNone<CR>", { desc = "Choose None" })
map("n", "<Leader>gCN", ":GitConflictNextConflict<CR>", { desc = "Next Conflict" })
map("n", "<Leader>gCp", ":GitConflictPrevConflict<CR>", { desc = "Previous Conflict" })
map("n", "<Leader>gCl", ":GitConflictPrevConflict<CR>", { desc = "List Conflict" })

-- buscar en el visual
vim.keymap.set("x", "/", "<Esc>/\\%V")

-- Automaticamente agregar semicolon or comma al final de la linea en insert y en normal
vim.keymap.set("i", ";;", "<ESC>A;")
vim.keymap.set("i", ",,", "<ESC>A,")
vim.keymap.set("n", ";;", "A;<ESC>")
vim.keymap.set("n", ",,", "A,<ESC>")

-- Move lines of text up and down
-- Normal Mode
vim.keymap.set("n", "<C-Down>", ":m .+1<CR>==<CR>")
vim.keymap.set("n", "<C-Up>", ":m .-2<CR>==<CR>")
-- Insert Mode
vim.keymap.set("i", "<C-Down>", "<esc>:m .+1<CR>==gi<CR>")
vim.keymap.set("i", "<C-Up>", "<esc>:m .-2<CR>==gi<CR>")
-- Visual Mode
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv<CR>")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv<CR>")
