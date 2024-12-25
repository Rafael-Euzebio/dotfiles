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
	-- Synthwave Colorscheme
	{ "artanikin/vim-synthwave84", lazy = true },

	-- Dracula Colorscheme
	{ "dracula/vim", lazy = true },

	-- Hardhacker Colorscheme
	{ "hardhackerlabs/theme-vim", lazy = true },

	-- Kanagawa Colorscheme
	{ "rebelot/kanagawa.nvim", lazy = true },

	--Dracula colorscheme
	{ "Mofiqul/dracula.nvim", lazy = true },

  -- Everforest
  { "neanias/everforest-nvim" },

	-- Alpha
	"goolord/alpha-nvim",

	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
	},

	-- File-Tree
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},
		version = "nightly",
	},

	-- Icons
	{ "kyazdani42/nvim-web-devicons", lazy = true },

	-- Buffer Line
	"noib3/nvim-cokeline",

	-- Notify
	"rcarriga/nvim-notify",

	-- Language Syntax Highlight
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- AutoClose Pairs ([{
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },

	-- Surround
	"kylechui/nvim-surround",

	-- Find and replace
	{ "nvim-lua/plenary.nvim" },
	{ "windwp/nvim-spectre", event = "VeryLazy" },

	-- Fuzzy-Find
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- calling `setup` is optional for customization
			require("fzf-lua").setup({})
		end,
	},

	-- Git UI
	"lewis6991/gitsigns.nvim",

	-- Schemastore
	"b0o/schemastore.nvim",

	-- LSP
	{ "neovim/nvim-lspconfig", event = "VeryLazy" },
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- Null-ls
	"jose-elias-alvarez/null-ls.nvim",

	-- CMP
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"dcampos/cmp-snippy",
			"onsails/lspkind.nvim",
		},
	},
	{ "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" },
	{ "hrsh7th/cmp-buffer", after = "nvim-cmp" },
	{ "hrsh7th/cmp-path", after = "nvim-cmp" },
	{ "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
	{ "dcampos/cmp-snippy", after = "nvim-cmp" },
	{ "onsails/lspkind.nvim", after = "nvim-cmp" },

	-- Snippets,
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
		event = { "VeryLazy" },
	},
	"rafamadriz/friendly-snippets",
	{ "dcampos/nvim-snippy", event = "VeryLazy" },

	-- Don't close vim splits
	"moll/vim-bbye",

	-- Markdown Preview
	"iamcco/markdown-preview.nvim",

	-- Stop Jamming HJKL!!!
	{ "ja-ford/delaytrain.nvim", event = "InsertEnter" },

	-- Smooth scroll
	"karb94/neoscroll.nvim",
	"roobert/neoscroll-motions.nvim",
	"MikeyJL/typewriter-auto-scroll",

	-- Highlight f and t matches
	{ "jinh0/eyeliner.nvim", event = "InsertEnter" },

	{
		"HampusHauffman/block.nvim",
		config = function()
			require("block").setup({})
		end,
	},

  -- autoclose tags
  {'windwp/nvim-ts-autotag'},

  -- Preview md and tex files
	{ "frabjous/knap" },

  -- Tex shorcuts
	{
		"lervag/vimtex",
		init = function()
			-- Use init for configuration, don't use the more common "config".
		end,
	},

  -- Autocorrect
	{
		"https://git.sr.ht/~swaits/thethethe.nvim",
		lazy = true,
		event = "VeryLazy",
		opts = {},
	},

  -- Stay Centered vertically
  {
    'arnamak/stay-centered.nvim'
  },

  -- Typescript Tools
--   {
--     "pmizio/typescript-tools.nvim",
--     dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
--     opts = {},
--   },

  { "mlaursen/vim-react-snippets" },
})
