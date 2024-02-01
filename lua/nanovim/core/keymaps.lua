local keymap = vim.keymap

vim.g.mapleader = " " -- set leader key to space

keymap.set("n", "<C-a>", "ggVG") -- select all text in file with Ctrl + a
