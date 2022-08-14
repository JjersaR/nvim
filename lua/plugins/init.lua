return require('packer').startup(function()
  -- My plugins here
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- tiempo de carga
  use 'lewis6991/impatient.nvim'

  -- tema nord
  use 'shaunsingh/nord.nvim'
  -- tema 2
  use 'tiagovla/tokyodark.nvim'
  -- tema 3
  use "rafamadriz/neon"
  -- tema 4
  use 'kyazdani42/blue-moon'

  -- la linea de abajo
  use {
    use 'tamton-aquib/staline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- la sintaxis
  use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }

  -- los buffers
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }

  -- navegador de archivos
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons' -- optional, for file icon
    }
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- LSP y autocompletado
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use { "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  }
  use { 'tami5/lspsaga.nvim' }
  use "jose-elias-alvarez/null-ls.nvim"
  use { "ray-x/lsp_signature.nvim" }

  -- para java
  use 'mfussenegger/nvim-jdtls'

  -- autopairs
  use { 'windwp/nvim-autopairs' }

  -- which-key
  use { 'folke/which-key.nvim' }

  -- iconos en cmp
  use 'onsails/lspkind-nvim'

  -- terminal
  use { "akinsho/toggleterm.nvim" }

  -- indentado
  use "lukas-reineke/indent-blankline.nvim"

  -- ver qué se modificó
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup { current_line_blame = true }
    end
  }
  -- pantalla de inicio
  use 'glepnir/dashboard-nvim'

  -- ranger
  use 'kevinhwang91/rnvimr'

  -- tema chido
  use({ "catppuccin/nvim", as = "catppuccin" })

  -- buffers
  use 'toppair/reach.nvim'

  -- scroll en pantalla
  use 'karb94/neoscroll.nvim'

  -- para comentar lineas
  use "terrortylor/nvim-comment"

  -- renombrar
  use {
    'filipdutescu/renamer.nvim',
    branch = 'master',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- symbols-outline, estructura
  use 'preservim/tagbar'

  -- transparente
  use 'xiyaowong/nvim-transparent'

  -- spectre
  use { 'windwp/nvim-spectre' }

  -- para bases de datos
  use({
    "kristijanhusak/vim-dadbod-ui",
    requires = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
      "tpope/vim-dotenv",
    },
  })

  -- sql
  use 'nanotee/sqls.nvim'

  -- mostrar errores tuneado
  use "https://git.sr.ht/~whynothugo/lsp_lines.nvim"

  -- fin de packer
end)
