local wk = require("which-key")

wk.register({
	["<leader>"] = {
		f = {
			name = "+Telescope",
		},
		g = {
			name = "+Github Utilities",
		},
		d = {
			name = "+Debugger",
		},
		h = {
			name = "+GitGutter",
		},
    n ={
      name = "+NerdTree",
    }
	},
})
