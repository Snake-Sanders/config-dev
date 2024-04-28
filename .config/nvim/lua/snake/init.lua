-- true colors only work with iTerm2
vim.cmd("set termguicolors")

-- settings indentation (for the youtube guy) 
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- key remap
require("snake.remap")

-- print("hello from snake")
