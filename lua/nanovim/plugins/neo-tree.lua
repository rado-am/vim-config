return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_gitignored = false,
          hide_dotfiles = false,
          hide_by_name = {
            ".git",
          }
        },
        follow_current_file = {
          enabled = true,
        },
      },
      source_selector = {
        winbar = true,
        statusline = true
      },
    })

    -- Show and focus neo-tree after start
    require("neo-tree.sources.manager").focus("filesystem")

    vim.keymap.set("n", "<C-n>", ":Neotree focus<CR>", {})
    vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", {})
  end
}
