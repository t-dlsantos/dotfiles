return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup()
		local gitsigns = require("gitsigns")
		vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk_inline)
	end,
}
