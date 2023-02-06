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
  'lewis6991/impatient.nvim',

  -- pantalla de inicio
  'goolord/alpha-nvim',

  -- tema
  { "catppuccin/nvim", name = "catppuccin", lazy = true, priority = 1000 },

  -- la linea de abajo
  { 'tamton-aquib/staline.nvim', priority = 1000 },

  -- arbol de directorios
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = { { "nt", ":NvimTreeToggle<CR>", desc = "NvimTree" } }
  },

  -- la sintaxis
  { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate<CR>" },

  -- buffers
  { 'akinsho/bufferline.nvim' },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
  },

  -- LSP y autocompletado
  { 'neovim/nvim-lspconfig', keys = { "<Leader>l" } },
  { 'hrsh7th/nvim-cmp', event = "InsertEnter",
    dependencies = {
      'hrsh7th/cmp-calc',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/vim-vsnip',
    }
  },
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
  {
    'L3MON4D3/LuaSnip',
  },

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
    }, keys = { { "<Leader>b", ":tab DBUI<CR>", desc = "Open" } },
  },

  -- sql
  { 'nanotee/sqls.nvim', ft = "sql" },

  -- extension de clangd
  { 'p00f/clangd_extensions.nvim', ft = "cpp" },

  -- refactorizar
  { 'ThePrimeagen/refactoring.nvim', keys = { "<Leader>rb", mode = "v" } },

  -- docstring python
  { 'heavenshell/vim-pydocstring', build = 'make install', ft = 'python' },

  -- magit
  { 'tpope/vim-fugitive', cmd = { "G", "Git" }, keys = { { "<Leader>g", ":G<CR>" } } },

  -- ver estructura
  { 'preservim/tagbar', keys = { { "T", ":TagbarToggle<CR>" } } },
})
