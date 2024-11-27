return {
	        "nvim-treesitter/nvim-treesitter",
		ensure_installed = "maintained",
		highlight = {
			enable = true, -- false will disable the whole extension
			disable = {}, -- list of language that will be disabled
			use_languagetree = true,
		},
		indent = {
			enable = true,
		},
	}
