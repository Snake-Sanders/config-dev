-- swich between recent files blazingly fast
return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-7>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-8>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-9>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-0>", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end)
	end,
	-- basic telescope configuration
	--    local conf = require("telescope.config").values
	--    local function toggle_telescope(harpoon_files)
	--      local file_paths = {}
	--      for _, item in ipairs(harpoon_files.items) do
	--        table.insert(file_paths, item.value)
	--      end
	--
	--      require("telescope.pickers").new({}, {
	--        prompt_title = "Harpoon",
	--        finder = require("telescope.finders").new_table({
	--          results = file_paths,
	--        }),
	--        previewer = conf.file_previewer({}),
	--        sorter = conf.generic_sorter({}),
	--      }):find()
	--    end
	--
	--    vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
	--      { desc = "Open harpoon window" })

	--vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
	--vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

	-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
	-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
	-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
	-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

	-- Go to previous harpoon mark
	--    vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
	-- Go to next harpoon mark
	--    vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)
	--  end,

	-- keys = {
	--  {
	--      "<leader>hm",
	--      "<cmd>lua require('harpoon.mark').add_file()<cr>",
	--      desc = "Mark file with harpoon",
	--    },
	--    {
	--      "<leader>hn",
	--      "<cmd>lua require('harpoon.ui').nav_next()<cr>",
	--      desc = "Go to next harpoon mark",
	--    },
	--    {
	--      "<leader>hp",
	--      "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
	--      desc = "Go to previous harpoon mark",
	--    },
	--    {
	--      "<leader>ha",
	--      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
	--      desc = "Show harpoon marks",
	--    },
	--  },
}
