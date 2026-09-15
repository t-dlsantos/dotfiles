return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- indent = { enabled = true },
		scroll = { enabled = false },
		notifier = { enabled = true },
		dashboard = { enabled = true },
		input = { enabled = true },
		scope = { enabled = true },
		lazygit = { enabled = true },
	},
	keys = {
		{
			"<leader>lg",
            function ()
				Snacks.lazygit()
			end,
            desc = "Open LazyGit",
		},
	},
	lazygit = {
		configure = true,
		config = {
			os = {
				editPreset = "nvim-remote",
			},
		},
	},
}
