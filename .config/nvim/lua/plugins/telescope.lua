-- telescope for fuzzy find file
return {
  {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    -- ctr + p = search files
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    -- space + f + g = find in files with grep 
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
  },
  {
    -- to show code actions (ca) in telescope
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup ({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}

    -- key remaps
    -- ctr + p = search files
    -- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
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
--  builtin.grep_string({search = vim.fn.input("Grep >")})
--end)
--
