-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        require("rose-pine").setup()
        vim.cmd('colorscheme rose-pine')
    end
  })
  use (
	'nvim-treesitter/nvim-treesitter', 
	{run = ':TSUpdate'}
  )
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'nvim-telescope/telescope-project.nvim'
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
  use 'kyazdani42/nvim-web-devicons'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 }
 use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = { {"nvim-tree/nvim-web-devicons"} }
})
use { "nvim-telescope/telescope-file-browser.nvim" }
use 'nvim-treesitter/nvim-treesitter'
-- Lua
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end
}
use 'rcarriga/nvim-notify'
use 'akinsho/toggleterm.nvim'
use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
}
use 'williamboman/nvim-lsp-installer'
use 'ggandor/lightspeed.nvim'
end)
