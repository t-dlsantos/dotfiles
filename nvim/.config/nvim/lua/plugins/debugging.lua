return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup()

		-- keymaps
		vim.keymap.set("n", "<Leader>dt", function()
			dap.toggle_breakpoint()
		end)
		vim.keymap.set("n", "<Leader>dc", function()
			dap.continue()
		end)
		vim.keymap.set("n", "<Leader>do", function()
			require("dap").step_over()
		end)
		vim.keymap.set("n", "<Leader>di", function()
			require("dap").step_into()
		end)

		-- dapui config
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- C#
		local dotnet = require("config.dap-dotnet")

		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "launch - netcoredbg",
				request = "launch",
				program = function()
					return dotnet.build_dll_path()
				end,
			},
		}
		local mason_path = vim.fn.stdpath("data") .. "/mason/packages/netcoredbg/netcoredbg"

		local netcoredbg_adapter = {
			type = "executable",

			command = mason_path,
			args = { "--interpreter=vscode" },
		}

		dap.adapters.netcoredbg = netcoredbg_adapter -- needed for normal debugging
		dap.adapters.coreclr = netcoredbg_adapter -- needed for unit test debugging
	end,
}
