return {
	{
		"mason-org/mason.nvim",
		opts = {},
		config = function()
			require("mason").setup({
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry",
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "stylua", "jsonls", "ruff", "pyright", "ts_ls"},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "LSP references" })

			local function get_python_path()
				local venv_python = vim.fn.getcwd() .. "/.venv/bin/python"

				if vim.fn.executable(venv_python) == 1 then
					return venv_python
				end

				return vim.fn.exepath("python")
			end

			vim.lsp.config("pyright", {
				capabilities = capabilities,

				settings = {
					python = {
						pythonPath = get_python_path()
					},
				},
			})
		end,
	},
}
