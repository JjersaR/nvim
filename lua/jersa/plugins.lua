local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({

	-- tiempo de carga
	{ "lewis6991/impatient.nvim", priority = 1000 },

	-- transparencia
	{ "xiyaowong/transparent.nvim", priority = 1000 },

	-- pantalla de inicio
	{ "goolord/alpha-nvim", event = "BufEnter" },

	-- tema
	{ "catppuccin/nvim", name = "catppuccin", lazy = true, priority = 1000 },

	-- la linea de abajo
	{ "tamton-aquib/staline.nvim", event = { "VeryLazy", "UIEnter" } },

	-- arbol de directorios
	{ "stevearc/oil.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- la sintaxis
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- buffers
	{
		"j-morano/buffer_manager.nvim",
		keys = { { "<Leader>b", ":lua require('buffer_manager.ui').toggle_quick_menu()<CR>", desc = "Buffer" } },
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		cmd = "Telescope",
	},

	-- LSP y autocompletado
	{ "neovim/nvim-lspconfig", keys = { "<Leader>l" }, event = { "BufReadPre", "BufNewFile" } },
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-calc",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/vim-vsnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{ "williamboman/nvim-lsp-installer" },
	{ "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", cmd = "Mason" },
	{ "tami5/lspsaga.nvim" },
	{ "ray-x/lsp_signature.nvim" },
	{ "rafamadriz/friendly-snippets" },
	{ "rmagatti/goto-preview", keys = { { "<Leader>lg" } } },
	{
		"L3MON4D3/LuaSnip",
	},

	-- formato
	{ "stevearc/conform.nvim", keys = { { "<C-s>", ":w<CR>", desc = "format" } } },

	-- para java
	{ "mfussenegger/nvim-jdtls", ft = "java" },
	{ "artur-shaik/jc.nvim", ft = "java" },

	-- autopairs
	{ "windwp/nvim-autopairs", event = { "BufWrite" }, config = true },

	-- which-key
	{ "folke/which-key.nvim", keys = { "<Leader>" }, event = "VimEnter" },

	-- iconos en cmp
	{ "onsails/lspkind-nvim" },

	-- terminal
	{ "akinsho/toggleterm.nvim", keys = { "<Leader>t" } },

	-- indentado
	{ "lukas-reineke/indent-blankline.nvim", event = "BufReadPre" },

	-- que se modifica
	{
		"lewis6991/gitsigns.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup({ current_line_blame = true })
		end,
	},

	-- para comentar lineas
	{ "terrortylor/nvim-comment", keys = { { "//", ":CommentToggle<CR>", desc = "commet" } } },

	-- renombrar
	{
		"filipdutescu/renamer.nvim",
		branch = "master",
		keys = { { "<Leader>lR", "<cmd>lua require('renamer').rename()<cr>", desc = "Rename" } },
	},

	-- spectre
	{ "windwp/nvim-spectre", keys = { { "<Leader>lS", ":Spectre<CR>", desc = "Rename all Project" } } },

	-- bases de datos
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			"tpope/vim-dadbod",
			"kristijanhusak/vim-dadbod-completion",
			"tpope/vim-dotenv",
		},
		keys = { { "<Leader>do", ":tab DBUI<CR>", desc = "Open" } },
	},

	-- ver estructura
	{ "preservim/tagbar", keys = { { "T", ":TagbarToggle<CR>", desc = "Comment" } } },

	-- folding
	{ "kevinhwang91/nvim-ufo", dependencies = { "kevinhwang91/promise-async" } },

	-- peticiones http
	{ "NTBBloodbath/rest.nvim", ft = "http" },

	-- templates
	{ "otavioschwanck/new-file-template.nvim" },

	-- test para java
	{
		"nvim-neotest/neotest",
		dependencies = { "rcasia/neotest-java" },
		keys = { { "<Leader>T", ":lua require('neotest').run.run()<CR>", desc = "Run Test" } },
	},

	-- proyectos
	{ "ahmedkhalf/project.nvim" },
})
