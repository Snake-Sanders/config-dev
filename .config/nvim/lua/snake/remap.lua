-- Key remap

vim.g.mapleader = " "

-- space + pv -> shows previows view, which is file Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Navigate vim panes
-- (hold ctrl and navigate NeoVim windows using the kjhl) 
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- move selected lines up (shift K) down (shift J)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- when joining lines with Shift J the cursor remains in its place
vim.keymap.set("n", "J", "mzJ`z")
-- keeps cursor static when paginating
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keeps cursor static when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keeps copy buffer after paste
vim.keymap.set("x", "<leader>p", "\"_dP")
-- copy to clipboard to be pasted outside neovim
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- avoid replay last recorded macro
vim.keymap.set("n", "Q", "<nop>")
