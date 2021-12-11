return require('packer').startup(function()
  -- My plugins here
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --tema nord
  use 'shaunsingh/nord.nvim'
  --tema 2
  use 'tiagovla/tokyodark.nvim'
  --tema 3
  use "rafamadriz/neon"
  --tema 4
  use 'kyazdani42/blue-moon'

	--la linea de abajo
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	
  -- la sintaxis
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

  --los buffers
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  --navegador de archivos
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  --telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --LSP y autocompletado
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'williamboman/nvim-lsp-installer'
  use 'glepnir/lspsaga.nvim'


  --para java
  use 'mfussenegger/nvim-jdtls'

  --autopairs
  use {'windwp/nvim-autopairs'}

  --which-key
  use {'folke/which-key.nvim'}

  --iconos en cmp
  use 'onsails/lspkind-nvim' 
  
  --terminal
  use {"akinsho/toggleterm.nvim"}


  --indentado
  use "lukas-reineke/indent-blankline.nvim"

  --ver qué se modificó
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup{current_line_blame = true}
    end
  }
  --pantalla de inicio
  use 'glepnir/dashboard-nvim'
		
  --ranger
  use 'kevinhwang91/rnvimr'

end)
