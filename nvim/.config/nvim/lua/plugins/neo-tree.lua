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

      require('neo-tree').setup({
        filesystem = {
          follow_current_file = {
            enabled = true
          },
          use_libuv_file_watcher = true
        }
      })
			vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle left<CR>", {})
			vim.keymap.set("n", "<leader>ç", ":Neotree filesystem focus left<CR>", {})
		end,
	},
}
