require("neotest").setup({
	adapters = {
		require("neotest-java")({
			ignore_wrapper = false, -- whether to ignore maven/gradle wrapper
		}),
	},
})
