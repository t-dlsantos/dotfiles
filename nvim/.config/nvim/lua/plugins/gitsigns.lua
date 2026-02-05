return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gitsigns = require("gitsigns")

    gitsigns.setup({
      current_line_blame = true
    })
		vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk_inline)
	end,
}
