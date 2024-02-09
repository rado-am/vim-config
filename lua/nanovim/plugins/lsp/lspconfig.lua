return {
  "neovim/nvim-lspconfig",
  config = function()
   local lspconfig = require('lspconfig')

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
    lspconfig.clangd.setup({})
    lspconfig.docker_compose_language_service.setup({})
    lspconfig.dockerls.setup({})
    lspconfig.graphql.setup({})
    lspconfig.tailwindcss.setup({})
    lspconfig.elixirls.setup({})
    lspconfig.kotlin_language_server.setup({})
    lspconfig.marksman.setup({})
    lspconfig.jdtls.setup({})
    lspconfig.sqls.setup({})
    lspconfig.gopls.setup({})
    lspconfig.csharp_ls.setup({})
    lspconfig.elp.setup({})
    lspconfig.ruby_ls.setup({})
    lspconfig.yamlls.setup({})

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set({ 'n', 'v' }, '<C-Enter>', vim.lsp.buf.code_action, {})
  end
}
