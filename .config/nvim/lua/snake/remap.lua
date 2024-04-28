-- Key remap

vim.g.mapleader = " "

-- space + pv -> shows previows view, which is file Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- ctr + p = search files
--vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- space + f + g = find in files with grep 
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- space + p + v = previous view
--vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- space + p + f = path find (all the files)
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- space + p + g = path find only files in git repo
--vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
-- space + p + s = project search
--vim.keymap.set('n', '<leader>ps', function()
 -- builtin.grep_string({search = vim.fn.input("Grep >")})
--end)
