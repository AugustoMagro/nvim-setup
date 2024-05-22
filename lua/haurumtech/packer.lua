-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'sainnhe/gruvbox-material',
	  lazy = false,
	  priority = 1000,
	  config = function()
		  -- Optionally configure and load the colorscheme
		  -- directly inside the plugin declaration.
		  vim.g.gruvbox_material_enable_italic = true
		  vim.cmd.colorscheme('gruvbox-material')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground', {run = ':TSUpdate'})
  use('ThePrimeagen/harpoon')

end)
