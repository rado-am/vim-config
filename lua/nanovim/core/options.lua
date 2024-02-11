local opt = vim.opt

-- Line number
opt.nu = true
opt.relativenumber = true

-- Tabs $ indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true -- if you include mixed case in your search, assymes you want case-sensitive
opt.hlsearch = true
opt.incsearch = true

-- Apperance
opt.termguicolors = true
opt.scrolloff = 10

-- Rest
opt.updatetime = 50
