local M = {}

vim.g.mapleader = " " -- set leader key to space

M.general = {
	{ mode = "n", key = "<leader>w", command = ":w<cr>" }, -- Save file
}

return M
