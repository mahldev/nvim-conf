vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'navarasu/onedark.nvim'
  use 'shaunsingh/nord.nvim'

   use {
 			'nvim-treesitter/nvim-treesitter',
 			run = function()
 				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
 				ts_update()
 			end,}

   use("nvim-treesitter/playground")
   use("theprimeagen/harpoon")
   use("theprimeagen/refactoring.nvim")
   use("mbbill/undotree")
   use("nvim-treesitter/nvim-treesitter-context");

   use {
 	  'VonHeikemen/lsp-zero.nvim',
 	  branch = 'v1.x',
 	  requires = {
 		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
 		  {'williamboman/mason.nvim'},
 		  {'williamboman/mason-lspconfig.nvim'},

 		  -- Autocompletion
 		  {'hrsh7th/nvim-cmp'},
 		  {'hrsh7th/cmp-buffer'},
 		  {'hrsh7th/cmp-path'},
 		  {'saadparwaiz1/cmp_luasnip'},
 		  {'hrsh7th/cmp-nvim-lsp'},
 		  {'hrsh7th/cmp-nvim-lua'},

 		  -- Snippets
 		  {'L3MON4D3/LuaSnip'},
 		  {'rafamadriz/friendly-snippets'},
 	  }
   }

   use("github/copilot.vim")
   use("eandrju/cellular-automaton.nvim")
   use {
       "windwp/nvim-autopairs",
       config = function() require("nvim-autopairs").setup {} end
   }
--   use {
--       'nvim-tree/nvim-tree.lua',
--       requires = {
--           'nvim-tree/nvim-web-devicons', -- optional
--       },
--   }
   use('nvim-tree/nvim-web-devicons')
   use {
       'nvim-lualine/lualine.nvim',
       requires = { 'nvim-tree/nvim-web-devicons', opt = true }
   }
   use {"akinsho/toggleterm.nvim", tag = '*', config = function()
       require("toggleterm").setup()
   end}
end)
