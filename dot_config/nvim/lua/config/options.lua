local opt = vim.o

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.termguicolors = true
opt.wrap = false
opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true
opt.swapfile = false
opt.hidden = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.clipboard:append("unnamedplus")
