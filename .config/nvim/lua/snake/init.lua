vim.g.mapleader = " "

-- indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- highlight
vim.opt.hlsearch = false

-- incremental seach highlight
vim.opt.incsearch = true

-- true colors only work with iTerm2
vim.opt.termguicolors = true

-- number of lines after end of file
vim.opt.scrolloff = 8

-- refresh view time
vim.opt.updatetime = 50

-- vertical column (rule) delimiter
vim.opt.colorcolumn = "80"
--
-- key remap
require("snake.remap")

