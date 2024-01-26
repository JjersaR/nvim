require("buffer_manager").setup({
	select_menu_item_commands = {
		v = {
			key = "<C-v>",
			command = "vsplit",
		},
		h = {
			key = "<C-h>",
			command = "split",
		},
	},
	short_file_names = true,
	short_term_names = true,
})

-- buffers
-- moverte con Tab y S-Tab
vim.cmd([[
nnoremap <silent><TAB> :lua require("buffer_manager.ui").nav_next()<CR>
nnoremap <silent><S-TAB> :lua require("buffer_manager.ui").nav_prev()<CR>
]])
-- mover los buffers
vim.api.nvim_command([[
autocmd FileType buffer_manager vnoremap J :m '>+1<CR>gv=gv
autocmd FileType buffer_manager vnoremap K :m '<-2<CR>gv=gv
]])
