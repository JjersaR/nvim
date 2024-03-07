local wk = require("which-key")
local rest = require("rest-nvim")

local Terminal = require("toggleterm.terminal").Terminal
local toggle_float = function()
	local float = Terminal:new({ direction = "float" })
	return float:toggle()
end

local toggle_lazygit = function()
	local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
	return lazygit:toggle()
end

local mappings = {
	q = { ":q<CR>", "Salir" },
	w = { ":w<CR>", "Guardar" },
	Q = { ":wq<CR>", "Sav. & Close" },
	E = { ":e ~/.config/nvim/init.lua<CR>", "Ir a init" },
	x = { "<cmd>!chmod +x %<CR>", "Ejecutable" },
	b = { ":lua require('buffer_manager.ui').toggle_quick_menu()<CR>", "Buffers" },
	l = {
		name = "LSP",
		i = { ":LspInfo<cr>", "Connected Language Servers" },
		k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
		K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
		w = {
			"<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>",
			"Add Workspace Folder",
		},
		W = {
			"<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",
			"Remove Workspace Folder",
		},
		l = {
			"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
			"List Workspace Folders",
		},
		t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },
		D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },
		r = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
		R = { '<cmd>lua require("renamer").rename()<cr>', "Rename" },
		a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
		e = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Show Line Diagnostics" },
		n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic" },
		N = {
			"<cmd>Lspsaga diagnostic_jump_prev<cr>",
			"Go To Previous Diagnostic",
		},
		f = { ":lua vim.lsp.buf.format {async = true}<CR>", "Format" },
		S = { ":Spectre<CR>", "Rename All Project" },
		g = {
			name = "gotoPreview",
			d = { "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", "Go to Definition" },
			t = { "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", "Go to Type Definition" },
			i = { "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", "Go to Implementation" },
			c = { "<cmd>lua require('goto-preview').close_all_win()<CR>", "Close all Win" },
			r = { "<cmd>lua require('goto-preview').goto_preview_references()<CR>", "Go to References" },
		},
	},
	j = {
		name = "Java",
		o = { ":JCimportsOrganize<CR>", "Organize Imports" },
		v = { ":JCrefactorExtractVar<CR>", "Extract Variable" },
		m = { ":JCrefactorExtractMethod<CR>", "Extract Method" },
		u = { ":JCutilUpdateConfig<CR>", "Update Config" },
		t = { ":JCgenerateToString<CR>", "Generate toString" },
		s = { ":JCgenerateAccessorGetter<CR>", "Generate Setter" },
		g = { ":JCgenerateAccessorGetter<CR>", "Generate Getter" },
		a = { ":JCgenerateAccessorSetterGetter<CR>", "Generate Getter and Setter" },
		h = { ":JCgenerateHashCodeAndEquals<CR>", "Generate Hash and Equals" },
		C = { ":JCgenerateConstructor<CR>", "Generate Constructor" },
		c = { ":JCgenerateConstructorDefault<CR>", "Generate Constructor Default" },
		M = { ":JCgenerateAbstractMethods<CR>", "Generate Abstract Methods" },
	},
	m = {
		name = "Maven",
		r = { ":TermExec direction=float cmd='mvn spring-boot:run'<CR>", "Run" },
		c = { ":!mvn clean<CR>", "Clean" },
		i = { ":!mvn clean install<CR>", "Clean and Install Dep" },
		d = { ":TermExec direction=float cmd='mvn spring-boot:dependency-tree'<CR>", "Dep. analysis report" },
		I = { ":TermExec direction=float cmd='mvn spring-boot:info'<CR>", "Aplication Info" },
	},
	t = {
		name = "Terminal",
		t = { ":ToggleTerm<CR>", "Split Below" },
		f = { toggle_float, "Floating Terminal" },
		l = { toggle_lazygit, "LazyGit" },
		v = { ":ToggleTerm direction=vertical size=100<CR>", "Vertical Terminal" },
		m = { ":MergetoolToggle<CR>", "Merge Conflict" },
	},
	d = {
		name = "Database",
		o = { ":tab DBUI<CR>", "Open" },
		a = { ":DBUIAddConnection<CR>", "Add connection" },
		r = { ":DBUIRenameBuffer<CR>", "Rename Buffer" },
		i = { ":DBUILastQueryInfo<CR>", "Last Query Info" },
		c = { ":tabclose<CR>", "Close" },
	},
	f = {
		name = "Telescope",
		f = { "<cmd>lua require('telescope.builtin').find_files()<CR>", "Find Files" },
		g = { ":Telescope live_grep<CR>", "Find Words" },
		b = { ":Telescope buffers<CR>", "Find Buffers" },
		h = { ":Telescope help_tags<CR>", "Find Command" },
		s = { ":Telescope git_status<CR>", "Git Status" },
		d = { ":Telescope diagnostics<CR>", "Diagnostics" },
		p = { ":Telescope projects<CR>", "Projects" },
	},
	p = {
		name = "Lazy",
		h = { ":Lazy home<CR>", "Lazy Home" },
		i = { ":Lazy update<CR>", "Lazy Update" },
		s = { ":Lazy sync<CR>", "Lazy Sync" },
		c = { ":Lazy clean<CR>", "Lazy Clean" },
		p = { ":Lazy profile<CR>", "Lazy Profile" },
	},
	r = {
		name = "Rest",
		n = { rest.run, "Run" },
		l = { rest.last, "Last" },
	},
	T = {
		name = "Test",
		r = { ":lua require('neotest').run.run()<CR>", "Test Run" },
		f = { "lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "Run file" },
	},
}
local opts = { prefix = "<leader>" }

wk.register(mappings, opts)
