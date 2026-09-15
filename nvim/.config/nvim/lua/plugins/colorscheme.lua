return {
	"webhooked/kanso.nvim",
	enabled = true,
	lazy = false,
	priority = 1000,
	opts = {
		background = {
			dark = "zen",
		},
		bold = false,
		italics = false,
		minimal = true,
		colors = {
			theme = {
				all = {
					syn = {
						special1 = "#8ba4b0",
					},
				},
			},
		},
	},
	config = function(_, opts)
		require("kanso").setup(opts)
		vim.cmd.colorscheme("kanso")
	end,
}
