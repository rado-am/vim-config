return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')
    local themes = require("telescope.themes")

    telescope.setup({
      extensions = {
        ["ui-select"] = {
          themes.get_cursor({}),
        },
      },
    })

    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<sc-p>',builtin.live_grep, {})
    vim.keymap.set('n', '<sc-g>', builtin.git_files, {})

    telescope.load_extension('fzf')
    telescope.load_extension('ui-select')
  end
}
