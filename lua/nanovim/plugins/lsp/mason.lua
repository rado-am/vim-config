return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    require("mason-lspconfig").setup({
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
        "clangd",
        "docker_compose_language_service",
        "dockerls",
        "graphql",
        "tailwindcss",
        "elixirls",
        "kotlin_language_server",
        "marksman",
        "jdtls",
        "sqls",
        "gopls",
        "csharp_ls",
        "elp",
        "ruby_ls",
        "yamlls",
      },
    })
  end
}
