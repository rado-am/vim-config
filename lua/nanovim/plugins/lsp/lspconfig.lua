return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local keymap = vim.keymap

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
		})
		lspconfig.tsserver.setup({
			capabilities = capabilities,
		})
		lspconfig.html.setup({
			capabilities = capabilities,
		})
		lspconfig.svelte.setup({
			capabilities = capabilities,
		})
		lspconfig.vuels.setup({
			capabilities = capabilities,
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})
		lspconfig.bashls.setup({
			capabilities = capabilities,
		})
		lspconfig.prismals.setup({
			capabilities = capabilities,
		})
		lspconfig.vimls.setup({
			capabilities = capabilities,
		})
		lspconfig.lemminx.setup({
			capabilities = capabilities,
		})
		lspconfig.docker_compose_language_service.setup({
			capabilities = capabilities,
		})
		lspconfig.dockerls.setup({
			capabilities = capabilities,
		})
		lspconfig.graphql.setup({
			capabilities = capabilities,
		})
		lspconfig.tailwindcss.setup({
			capabilities = capabilities,
		})
		lspconfig.marksman.setup({
			capabilities = capabilities,
		})
		lspconfig.sqls.setup({
			capabilities = capabilities,
		})
		lspconfig.yamlls.setup({
			capabilities = capabilities,
		})

		keymap.set("n", "K", vim.lsp.buf.hover, {})
		keymap.set("n", "D", vim.lsp.buf.definition, {})
		keymap.set({ "n", "v", "i" }, "<C-Enter>", vim.lsp.buf.code_action, {})
		keymap.set("n", "E", vim.diagnostic.open_float)
	end,
}
