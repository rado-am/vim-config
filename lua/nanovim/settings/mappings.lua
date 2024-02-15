local M = {}

vim.g.mapleader = " " -- Set leader key (Space key)
vim.g.maplocalleader = " " -- Set local leader (Space key)

M.general = {
  { mode = "n", key = "<leader>w", command = ":w<cr>" }, -- Save file
}

return M
