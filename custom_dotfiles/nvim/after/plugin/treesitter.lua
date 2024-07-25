local config = require("nvim-treesitter.configs")

config.setup({
	ensure_installed = {
		"go",
		"c",
		"typescript",
		"html",
		"cpp",
		"regex",
		"bash",
		"json",
		"html",
		"javascript",
		"lua",
		"python",
	},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
	autotag = {
		enable = true,
	},
})
