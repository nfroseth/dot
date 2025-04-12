-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
  use 'sainnhe/everforest'
	use 'airblade/vim-gitgutter' 
  use 'vim-airline/vim-airline'
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = {{'nvim-lua/plenary.nvim'}}}
	use 'hrsh7th/nvim-cmp' 
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'alaviss/nim.nvim'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
	use {'preservim/vim-markdown',
	  requires = {{'godlygeek/tabular'}}}
	use 'epwalsh/obsidian.nvim'
end)
