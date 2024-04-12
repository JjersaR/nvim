require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"cpp",
		"lua",
		"java",
		"python",
		"meson",
		"dockerfile",
		"javascript",
		"html",
		"http",
		"hurl",
	},
	sync_install = false,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = false,
	},
	autopairs = {
		enable = true,
	},
})

require("nvim-ts-autotag").setup({})
