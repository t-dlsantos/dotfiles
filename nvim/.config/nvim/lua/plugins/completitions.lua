return {
	"saghen/blink.cmp",
	dependencies = {
		"saghen/blink.lib",
		"rafamadriz/friendly-snippets",
	},

	opts = {
		keymap = { preset = "super-tab" },

		completion = {
			menu = {
				auto_show = true,
        auto_show_delay_ms = 100
			},
			trigger = {
				show_on_keyword = true,
				show_on_trigger_character = true,
			},
			documentation = {
				auto_show = true,
			},
		},

		sources = { default = { "lsp", "path", "snippets", "buffer" } },

		signature = {
			enabled = true,
		},

		fuzzy = { implementation = "lua" },
	},
}
