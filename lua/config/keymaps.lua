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
map("n", "<Leader>m", "", { desc = " Maven" })
map(
  "n",
  "<Leader>mr",
  ":TermExec direction=float cmd='mvn spring-boot:run'<CR>",
  { desc = " Maven Spring Boot Run" }
)
map("n", "<Leader>mR", ":TermExec direction=float cmd='mvn run'<CR>", { desc = " Maven Run" })
map("n", "<Leader>mc", ":!mvn clean<CR>", { desc = " Maven Clean" })
map("n", "<Leader>mi", ":!mvn clean install<CR>", { desc = " Maven Clean Install" })
map("n", "<Leader>md", ":!mvn dependency:go-offline<CR>", { desc = " Maven List Dependencies" })
map("n", "<Leader>mu", ":JdtUpdateConfig<CR>", { desc = " Update Config" })
map("n", "<Leader>mp", ":!mvn clean package<CR>", { desc = " Package (.jar)" })

-- git conflict
map("n", "<Leader>gC", "", { desc = "Git Conflicts" })
map("n", "<Leader>gCo", ":GitConflictChooseOurs<CR>", { desc = "Choose Ours" })
map("n", "<Leader>gCt", ":GitConflictChooseTheirs<CR>", { desc = "Choose Theirs" })
map("n", "<Leader>gCb", ":GitConflictChooseBoth<CR>", { desc = "Choose Both" })
map("n", "<Leader>gCn", ":GitConflictChooseNone<CR>", { desc = "Choose None" })
map("n", "<Leader>gCN", ":GitConflictNextConflict<CR>", { desc = "Next Conflict" })
map("n", "<Leader>gCp", ":GitConflictPrevConflict<CR>", { desc = "Previous Conflict" })
map("n", "<Leader>gCl", ":GitConflictPrevConflict<CR>", { desc = "List Conflict" })
