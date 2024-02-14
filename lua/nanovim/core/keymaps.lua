local keymap = vim.keymap
local general_mappings = require("nanovim.settings.mappings").general

vim.g.mapleader = " " -- set leader key to space

for _, mapping in pairs(general_mappings) do
  keymap.set(mapping.mode, mapping.key, mapping.command)
end

-- Map Ctrl + a to select all text in normal & insert mode
keymap.set("n", "<C-a>", "ggVG")
keymap.set("i", "<C-a>", "<Esc>ggVG")

-- Map Ctrl + d to duplicate line in normal & instert mode
keymap.set("n", "<C-d>", ":t.<CR>")
keymap.set("i", "<C-d>", "<Esc>:t.<CR>i")

-- Map Ctrl + c to copy selected text to system clipboard
keymap.set("x", "<C-c>", '"+y')

-- Map j & k to move lines up and down
keymap.set("v", "j", ":m '>+1<CR>gv=gv")
keymap.set("v", "k", ":m '<-2<CR>gv-gv")
