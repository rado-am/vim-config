local keymap = vim.keymap

vim.g.mapleader = " " -- set leader key to space

-- Map Ctrl + a to select all text in normal & insert mode
keymap.set("n", "<C-a>", "ggVG")
keymap.set("i", "<C-a>", "<Esc>ggVG")

-- Map Ctrl + d to duplicate line in normal & instert mode
keymap.set("n", "<C-d>", ":t.<CR>")
keymap.set("i", "<C-d>", "<Esc>:t.<CR>i")
