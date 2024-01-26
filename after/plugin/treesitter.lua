require("nvim-treesitter.configs").setup({
	ensure_installed = { "cpp", "lua", "java", "python", "toml", "meson", "dockerfile" },
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
