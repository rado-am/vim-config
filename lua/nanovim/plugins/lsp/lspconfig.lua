return {
  "neovim/nvim-lspconfig",
  config = function()
   local lspconfig = require('lspconfig')

    lspconfig.lua_ls.setup({})
    lspconfig.rust_analyzer.setup({})

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'D', vim.lsp.buf.declaration, {})
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
  end
}
