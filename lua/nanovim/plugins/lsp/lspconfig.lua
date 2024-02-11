return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local keymap = vim.keymap

		lspconfig.lua_ls.setup({})
		lspconfig.rust_analyzer.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.html.setup({})
		lspconfig.svelte.setup({})
		lspconfig.vuels.setup({})
		lspconfig.cssls.setup({})
		lspconfig.bashls.setup({})
		lspconfig.prismals.setup({})
		lspconfig.vimls.setup({})
		lspconfig.lemminx.setup({})
		lspconfig.docker_compose_language_service.setup({})
		lspconfig.dockerls.setup({})
		lspconfig.graphql.setup({})
		lspconfig.tailwindcss.setup({})
		lspconfig.marksman.setup({})
		lspconfig.sqls.setup({})
		lspconfig.yamlls.setup({})

		keymap.set("n", "K", vim.lsp.buf.hover, {})
		keymap.set("n", "D", vim.lsp.buf.definition, {})
		keymap.set({ "n", "v", "i" }, "<C-Enter>", vim.lsp.buf.code_action, {})
	end,
}
