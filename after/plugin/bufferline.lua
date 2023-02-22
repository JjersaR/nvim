require("bufferline").setup {}
vim.cmd [[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
tnoremap <silent><TAB> <C-\><C-N><C-w>:BufferLineCycleNext<CR>
tnoremap <silent><S-TAB> <C-\><C-N><C-w>:BufferLineCyclePrev<CR>
]]
