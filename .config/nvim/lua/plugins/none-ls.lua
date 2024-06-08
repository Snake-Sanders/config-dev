-- the styling has to be installed manually by ex
-- :Mason then open the tab (5) Formatters, find the style
--  and press 'i' to install (example stylua)
--
return {
  "/nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
      },
    })

    vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
  end,
}
