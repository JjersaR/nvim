local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspFlags = {
	debounce_text_changes = 150,
}

capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

--para c, c++ y de más
require("lspconfig").clangd.setup({
	capabilities = capabilities,
	flags = lspFlags,
})

-- para python
require("lspconfig").pyright.setup({
	capabilities = capabilities,
	flags = lspFlags,
})

--lua
require("lspconfig").lua_ls.setup({
	capabilities = capabilities,
	flags = lspFlags,
})

--java
require("lspconfig").jdtls.setup({
	capabilities = capabilities,
	cmd = { "jdtls" },
	settings = {
		java = { signatureHelp = { enabled = true }, contentProvider = { preferred = "fernflower" } },
	},
	on_init = function(client)
		if client.config.settings then
			client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
		end
	end,
	root_dir = function(fname)
		return require("lspconfig").util.root_pattern("pom.xml", "gradle.build", ".git", "meson.build")(fname)
			or vim.fn.getcwd()
	end,
	flags = lspFlags,
})

-- rust
require("lspconfig").rust_analyzer.setup({
	capabilities = capabilities,
	flags = lspFlags,
})

-- para toml
require("lspconfig").taplo.setup({
	capabilities = capabilities,
	flags = lspFlags,
})

-- para meson
require("lspconfig").vala_ls.setup({
	capabilities = capabilities,
	flags = lspFlags,
})

-- para docker
require("lspconfig").dockerls.setup({
	capabilities = capabilities,
	flags = lspFlags,
})
