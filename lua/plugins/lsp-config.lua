return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "tsserver",
          "clangd",
          "stylelint_lsp",
          "omnisharp",
          "dockerls",
          "docker_compose_language_service",
          "elixirls",
          "bashls",
          "graphql",
          "html",
          "jsonls",
          "prismals",
          "tailwindcss",
          "svelte",
          "sqls",
          "tflint",
          "vuels",
          "lemminx",
          "yamlls",
          "marksman",
        },
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.clangd.setup({})
      lspconfig.stylelint_lsp.setup({})
      lspconfig.omnisharp.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.elixirls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.graphql.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.prismals.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.svelte.setup({})
      lspconfig.sqls.setup({})
      lspconfig.tflint.setup({})
      lspconfig.vuels.setup({})
      lspconfig.lemminx.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.marksman.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    end
  }
}
