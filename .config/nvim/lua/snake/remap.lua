-- Key remap

vim.g.mapleader = " "

-- space + pv -> shows previows view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = 'show prev view'})

-- Navigate vim panes
-- (hold ctrl and navigate NeoVim windows using the kjhl) 
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- move selected lines up (shift K) down (shift J)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = 'move lines down'})
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", {desc = 'move lines up'})

-- when joining lines with Shift J the cursor remains in its place
vim.keymap.set("n", "J", "mzJ`z")
-- keeps cursor static when paginating
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = 'page down'})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = 'page up'})

-- keeps cursor static when searching
vim.keymap.set("n", "n", "nzzzv", {desc = 'find next'})
vim.keymap.set("n", "N", "Nzzzv", {desc = 'find prev'})

-- keeps copy buffer after paste
-- x is visual mode, s is select mode, v is both
-- 1. yank something, then select something else and leader p to replace it
vim.keymap.set("x", "<leader>p", "\"_dP")
-- copy to clipboard to be pasted outside neovim
vim.keymap.set("n", "<leader>y", "\"+y", {desc = 'copy to clipboard'})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = 'copy to clipboard'})
vim.keymap.set("n", "<leader>Y", "\"+Y", {desc = 'copy to clipboard'})


-- avoid replay last recorded macro
vim.keymap.set("n", "Q", "<nop>")

