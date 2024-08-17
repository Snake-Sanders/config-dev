return { -- Autoformat
  "stevearc/conform.nvim",
  lazy = false,
  keys = {
    {
      "<leader>fo",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    default_format_opts = {
      timeout_ms = 3000,
      async = false,               -- not recommended to change
      quiet = false,               -- not recommended to change
      lsp_format = "fallback",     -- not recommended to change
      notify_on_error = false,
      notify_no_formatters = true,
      log_level = vim.log.levels.DEBUG,
      --      format_after_save = {
      --        lsp_format = "fallback", -- not recommended to change
      --      },
    },
    formatters_by_ft = {
      lua = { "stylua" },
      elixir = { "mix" },
      heex = { "mix" },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      -- javascript = { { "prettierd", "prettier" } },
    },
  },

  -- Setup function that runs after the plugin is loaded
  config = function()
    -- Ensure .heex files are formatted with mix on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function()
        local filetype = vim.bo.filetype

        if filetype == "heex" then
          require("conform").format({ async = false, lsp_fallback = false })
        else
          require("conform").format({ async = false, lsp_fallback = true })
        end
      end,
    })
  end,
}
