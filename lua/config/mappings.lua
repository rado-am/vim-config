vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>a', 'ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>c', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>z', ':u<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>s', ':w<CR>', { noremap = true, silent = true })
