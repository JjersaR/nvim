require("hurl").setup({
	mode = "split",
	formatters = {
		json = { "jq" }, -- Make sure you have install jq in your system, e.g: brew install jq
		html = {
			"prettier", -- Make sure you have install prettier in your system, e.g: npm install -g prettier
			"--parser",
			"html",
		},
	},
	env_file = {
		".env",
	},
})
