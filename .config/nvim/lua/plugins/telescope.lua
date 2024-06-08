-- telescope for fuzzy find file
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			-- ctr + p = search files in git repo only
			vim.keymap.set("n", "<C-p>", builtin.git_files, {})
			-- space + p + f = search files
			vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
      -- space + p + s = find in files with grep
      -- not this keymap requires ripgrep to be installed
      vim.keymap.set("n", "<leader>ps", function()
        builtin.grep_string({search = vim.fn.input("Grep > ")})
      end)
		end,
	},
	{
		-- to show code actions (ca) in telescope
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}


