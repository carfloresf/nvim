return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"golangci_lint_ls",
				"gopls",
				"html",
				"jsonls",
				"biome",
				"tsserver",
				"jedi_language_server",
				"pyre",
				"pyright",
				"hydra_lsp",
				"yamlls",
				"lua_ls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint",
				"eslint_d",
				"json-to-struct",
				"goimports",
				"goimports-reviser",
				"gotests",
				"gotestsum",
			},
		})
	end,
}
