local o = vim.o
local wo = vim.wo
local bo = vim.bo
local opt = vim.opt

vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "#FFA630" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#51576d" })
vim.cmd("filetype plugin indent on")
o.shortmess = o.shortmess .. "c"
o.whichwrap = "b,s,<,>,[,],h,l"
o.ignorecase = true
wo.signcolumn = "yes"
wo.relativenumber = true
wo.number = true
o.clipboard = "unnamedplus"
o.hidden = true
o.lazyredraw = true
o.shell = "/bin/sh"
o.pumheight = 10
o.fileencoding = "utf-8"
o.cmdheight = 2
opt.termguicolors = true
o.conceallevel = 0
o.showtabline = 0
o.showmode = false
o.writebackup = false
o.updatetime = 300
o.hlsearch = false
o.scrolloff = 0
o.sidescrolloff = 5
o.mouse = "a"
wo.wrap = false
o.cursorline = true
o.tabstop = 2
bo.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
bo.shiftwidth = 2
o.autoindent = true
bo.autoindent = true
o.expandtab = true
bo.expandtab = true
opt.foldcolumn = "1"
opt.foldlevel = 99
opt.foldlevelstart = -1
opt.foldenable = true

local notify = vim.notify
vim.notify = function(msg, ...)
	if
		msg:match("warning: multiple different client offset_encodings detected for buffer, this is not supported yet")
	then
		return
	end
	notify(msg, ...)
end
