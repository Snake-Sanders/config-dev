-- catppuccin is a color theme
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  confing = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
