-- shows a floating window for command
return {
	"VonHeikemen/fine-cmdline.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ ":", "<cmd>FineCmdline<CR>", desc = "floating windowd for cmd" },
	},
}
