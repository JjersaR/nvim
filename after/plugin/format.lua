require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		java = { "google-java-format" },
		python = { "black" },
		javascript = { "eslint_d" },
	},
	format_on_save = {
		lsp_fallback = true,
		timeout_ms = 500,
	},
})
