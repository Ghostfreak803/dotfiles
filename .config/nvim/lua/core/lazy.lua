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
	-- the colorscheme should be available when starting Neovim
  {
  "tanvirtin/monokai.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme monokai]])
    end,
  },

    "tomasiser/vim-code-dark",
  "folke/which-key.nvim",
  "lambdalisue/fern.vim",
  "neovim/nvim-lspconfig",
  {
	"luukvbaal/nnn.nvim",
	config = function()
		require("nnn").setup()
	end,
  },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  { "nvim-lualine/lualine.nvim",
    dependencies = {
        "kyazdani42/nvim-web-devicons",
    },
  },
  {
        "karb94/neoscroll.nvim",
  config = function ()
    require('neoscroll').setup {}
  end
  }
})
