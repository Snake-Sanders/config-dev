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

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

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

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- key remap
require("snake.remap")
