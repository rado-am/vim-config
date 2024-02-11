return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_null_ls = require("mason-null-ls")

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
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"tsserver",
				"html",
				"svelte",
				"vuels",
				"cssls",
				"bashls",
				"prismals",
				"vimls",
				"lemminx",
				"docker_compose_language_service",
				"dockerls",
				"graphql",
				"tailwindcss",
				"marksman",
				"sqls",
				"yamlls",
			},
		})

		mason_null_ls.setup({
			ensure_installed = {
				"stylua",
				"prettierd",
				"eslint_d",
				"rustfmt",
				"beautysh",
				"vint",
				"hadolint",
				"rustywind",
				"actionlint",
				"sqlfluff",
				"luacheck",
			},
		})
	end,
}
