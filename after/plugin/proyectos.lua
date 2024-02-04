require("project_nvim").setup({
	patterns = { ">WebSB", "pom.xml", "gradle.build", "meson.build" },
})
require("telescope").load_extension("projects")
