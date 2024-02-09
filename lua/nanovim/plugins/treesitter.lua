return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
    "windwp/nvim-autopairs"
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "angular",
        "bash",
        "c",
        "c_sharp",
        "cpp",
        "css",
        "dockerfile",
        "elixir",
        "erlang",
        "gitignore",
        "go",
        "graphql",
        "html",
        "http",
        "java",
        "javascript",
        "jq",
        "jsdoc",
        "json",
        "kotlin",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "prisma",
        "regex",
        "ruby",
        "rust",
        "scss",
        "sql",
        "styled",
        "svelte",
        "terraform",
        "tsx",
        "typescript",
        "vue",
        "xml",
        "yaml",
        "vim",
        "vimdoc"
      },
    })
  end
}
