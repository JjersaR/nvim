vim.opt.updatetime = 200

require("barbecue").setup({
  create_autocmd = true, -- prevent barbecue from updating itself automatically
})
