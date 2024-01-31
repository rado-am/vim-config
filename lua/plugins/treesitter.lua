return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "c",
          "lua",
          "luadoc",
          "vim",
          "vimdoc",
          "css",
          "c_sharp",
          "dockerfile",
          "elixir",
          "erlang",
          "bash",
          "gitignore",
          "graphql",
          "html",
          "javascript",
          "json",
          "prisma",
          "rust",
          "scss",
          "sql",
          "svelte",
          "terraform",
          "tsx",
          "typescript",
          "vue",
          "xml",
          "yaml",
          "markdown"
        },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}