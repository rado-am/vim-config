return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-null-ls.nvim"
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
        "docker_compose_language_service",
        "dockerls",
        "graphql",
        "tailwindcss",
        "marksman",
        "sqls",
        "yamlls",
      },
    })

    require("mason-null-ls").setup({
      ensure_installed = {
        "stylua"
      }
    })
  end
}
