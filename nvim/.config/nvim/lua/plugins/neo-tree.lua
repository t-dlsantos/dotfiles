return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		config = function()
			require("nvim-web-devicons").set_icon({
				csharp = {
					icon = "",
					color = "#89e051",
					cterm_color = "58",
					name = "cs",
				},
			})
			vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle left<CR>", {})
			vim.keymap.set("n", "<leader>ç", ":Neotree filesystem focus left<CR>", {})
		end,
	},
}
