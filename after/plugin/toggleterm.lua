require("toggleterm").setup({
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = "1",
	start_in_insert = true,
	persist_size = true,
})

local tman = require("tman")
tman.setup({
	split = "bottom",
})
