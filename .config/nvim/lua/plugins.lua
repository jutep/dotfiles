local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}
  -- file explorer
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- language server stuff
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Telescope instead of fzf
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- vimwiki
  use 'vimwiki/vimwiki'

  -- autopairs
  use 'windwp/nvim-autopairs'

  -- neomux
  use 'nikvdp/neomux'

  -- primeagen game to get good in vim
  use 'ThePrimeagen/vim-be-good'

  -- colors for css and so
  use 'norcalli/nvim-colorizer.lua'

  -- fancy start page
  use 'mhinz/vim-startify'

  -- vimspector for debugging
  use 'puremourning/vimspector'
  use 'szw/vim-maximizer'

  -- auto sessions
  use 'rmagatti/auto-session'

  -- vim-ultest
  use { "rcarriga/vim-ultest", requires = {"janko/vim-test"}, run = ":UpdateRemotePlugins" }

  -- markdown preview (not working)
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

end)
