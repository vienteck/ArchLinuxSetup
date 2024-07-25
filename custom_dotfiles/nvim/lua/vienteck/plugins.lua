return {
	--DEBUGGER
	{ "folke/neodev.nvim", opts = {} },
	{
		"jay-babu/mason-nvim-dap.nvim",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			handlers = {},
		},
	},
  --PYTHON DEBUGGER
	{ 
    "mfussenegger/nvim-dap-python",
     lazy = true,
  },
  --GOLANG DEBUGGER
	{ 
    "leoluz/nvim-dap-go",
    lazy = true,
  },
	{ "nvim-telescope/telescope-dap.nvim" },
	{
		"rcarriga/nvim-dap-ui",
		lazy = true,
		dependencies = {
      {"mfussenegger/nvim-dap"},
      {"nvim-neotest/nvim-nio"},
    },
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	--themes
	{ "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "storm",
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	{ "rebelot/kanagawa.nvim" },
	{ "olimorris/onedarkpro.nvim" },
	--syntax, highlights and formatting
	{ "ap/vim-css-color" },
	{ "tpope/vim-commentary" },
	{ "tpope/vim-surround" },
	{ "jose-elias-alvarez/null-ls.nvim", lazy = false, dependencies = { "nvim-lua/plenary.nvim" } },
	--UI plugins
  { "scrooloose/nerdtree"},
	{ "m4xshen/autoclose.nvim" }, -- Used to autoclose characters like (){}[]
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	--treesitter
	{ "windwp/nvim-ts-autotag" },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{ "nvim-treesitter/playground" },
	{ "theprimeagen/harpoon" },
	{ "mbbill/undotree" },
	--git stuff
	{ "tpope/vim-fugitive" },
	{ "airblade/vim-gitgutter" },
	--lsp server packages
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		lazy = false,
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				"williamboman/mason.nvim",
				ensure_installed = {
					"clangd",
					"codelldb",
          "clang_format"
				},
			}, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
}
