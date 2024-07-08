-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

--SCARICHIAMO ATTRAVERSO REQUIRE IL PACKER PER GESTIRE I PLUGINS
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- SCARICHIAMO TELESCOPE CHE SERVIRA PER MOSTRARCI DOVE SI TROVANO FILE PAROLE E GIT
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

--SCARICHIAMO ROSEPINE PER LA GRAFICA UI
  use ({ 
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

-- Scarichiamo TREE SITTER PER SINTAX etc..
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
-- Playgrund TREE SITTER
  use ('nvim-treesitter/playground')
-- HARPOON POWER CTRL E
  use ('ThePrimeagen/harpoon')
-- UNDOTREE SPAZIO U
  use ('mbbill/undotree')
-- Fugitive GIT
  use ('tpope/vim-fugitive')

end)




