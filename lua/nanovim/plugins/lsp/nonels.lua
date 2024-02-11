return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    local keymap = vim.keymap
    null_ls.setup({
      sources = {
        formatting.stylua,
        formatting.prettierd.with({
          extra_filetypes = { "svelte" }, -- support svelte files
        }),
        formatting.rustfmt,
        formatting.beautysh,
        formatting.rustywind,
        formatting.sqlfluff.with({
          extra_args = { "--dialect", "postgres" }, -- change to your dialect
        }),
        diagnostics.eslint_d,
        diagnostics.vint,
        diagnostics.hadolint,
        diagnostics.actionlint,
        diagnostics.sqlfluff.with({
          extra_args = { "--dialect", "postgres" }, -- change to your dialect
        }),
        diagnostics.luacheck,
      },
      -- format on save
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format()
            end,
          })
        end
      end,
    })

    keymap.set({ "n", "v", "i" }, "<M-Enter>", vim.lsp.buf.format, {})
  end,
}
