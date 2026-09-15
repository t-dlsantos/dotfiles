return {
	{
		"nvim-mini/mini.icons",
		opts = {
			style = "glyph",
		},

		init = function()
			package.preload["nvim-web-devicons"] = function()
				require("mini.icons").mock_nvim_web_devicons()
				return package.loaded["nvim-web-devicons"]
			end
			vim.api.nvim_set_hl(0, "MiniIconsAzure", {
				fg = "#8992a7",
			})
		end,
	},
}
