vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>a', 'ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>c', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>z', ':u', { noremap = true, silent = true })
