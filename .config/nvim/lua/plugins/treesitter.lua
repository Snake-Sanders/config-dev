return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { 'bash', 'c', 'diff', 'elixir', 'eex', 'heex',  'javascript', 'html', 'lua', 'luadoc', 'markdown', 'rust', 'vim', 'vimdoc' },
      highlight = { enable = true, disable = { 'ruby' } },
      indent = { enable = true },
    })
  end,
}
