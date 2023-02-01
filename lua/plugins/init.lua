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

  -- tema
  { "catppuccin/nvim", name = "catppuccin", lazy = true, priority = 1000 },

  -- la linea de abajo
  { 'tamton-aquib/staline.nvim', priority = 1000 },

  -- arbol de directorios
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  -- la sintaxis
  { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate<CR>" },

  -- buffers
  { 'akinsho/bufferline.nvim' },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = { "<Leader>f" }
  },

  -- LSP y autocompletado
  { 'neovim/nvim-lspconfig', keys = { "<Leader>l" } },
  { 'hrsh7th/nvim-cmp', event = "InsertEnter" },
  { 'hrsh7th/cmp-nvim-lsp', after = "nvim-cmp" },
  { 'hrsh7th/cmp-buffer', after = "nvim-cmp" },
  { 'hrsh7th/cmp-path', after = "nvim-cmp" },
  { 'hrsh7th/cmp-vsnip', after = "nvim-cmp" },
  { 'hrsh7th/vim-vsnip' },
  { "williamboman/nvim-lsp-installer" },
  { "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    cmd = "Mason"
  },
  { 'tami5/lspsaga.nvim' },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "ray-x/lsp_signature.nvim" },
  { 'rafamadriz/friendly-snippets' },
  { 'rmagatti/goto-preview', keys = { "<Leader>lg" } },

  -- para java
  { 'mfussenegger/nvim-jdtls', ft = "java" },
  { 'artur-shaik/jc.nvim', ft = "java" },

  -- autopairs
  { 'windwp/nvim-autopairs' },

  -- which-key
  { 'folke/which-key.nvim', keys = { "<Leader>" } },

  -- iconos en cmp
  { 'onsails/lspkind-nvim' },

  -- terminal
  { "akinsho/toggleterm.nvim", keys = { "<Leader>t" } },

  -- indentado
  { "lukas-reineke/indent-blankline.nvim" },

  -- que se modifica
  {
    'lewis6991/gitsigns.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup { current_line_blame = true }
    end
  },

  -- ranger
  { 'kevinhwang91/rnvimr', keys = { "fn", "<cmd>RnvimrToggle<CR>" } },

  -- windows
  { 'toppair/reach.nvim', keys = { "ro", "<cmd>ReachOpen buffers<CR>" } },

  -- para comentar lineas
  { "terrortylor/nvim-comment", keys = { { "//", "<cmd>CommentToggle<CR>", desc = 'Comment' } } },

  -- renombrar
  {
    'filipdutescu/renamer.nvim',
    branch = 'master'
  },

  -- spectre
  { 'windwp/nvim-spectre', keys = { "so", "<cmd>lua require('spectre').open()<CR>" } },

  -- bases de datos
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
      "tpope/vim-dotenv",
    }, keys = { "<Leader>b" },
  },

  -- sql
  { 'nanotee/sqls.nvim', ft = "sql" },

  -- extension de clangd
  { 'p00f/clangd_extensions.nvim', ft = "cpp" },

  -- refactorizar
  { 'ThePrimeagen/refactoring.nvim', keys = { "<Leader>rb", mode = "v" } },

  -- docstring python
  { 'heavenshell/vim-pydocstring', build = 'make install', ft = 'python' },

  -- IDE
  { 'ldelossa/nvim-ide' },

  -- magit
  { 'tpope/vim-fugitive' },
})
