return {
  "hrsh7th/nvim-cmp",
  -- load cmp on InsertEnter
  event = "InsertEnter",
  -- these dependencies will only be loaded when cmp loads
  -- dependencies are always lazy-loaded unless specified otherwise
  dependencies = {
    -- LSP Support
    "neovim/nvim-lspconfig",             -- Required
    "williamboman/mason.nvim",           -- Optional
    "williamboman/mason-lspconfig.nvim", -- Optional

    -- Autocompletion
    "hrsh7th/nvim-cmp",         -- Required
    "hrsh7th/cmp-nvim-lsp",     -- Required
    "hrsh7th/cmp-buffer",       -- Optional
    "hrsh7th/cmp-path",         -- Optional
    "saadparwaiz1/cmp_luasnip", -- Optional
    "hrsh7th/cmp-nvim-lua",     -- Optional

    -- Snippets
    "L3MON4D3/LuaSnip",             -- Required
    "rafamadriz/friendly-snippets", -- Optional
  },
  config = function()
    -- ...
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          -- setting up snippet engine
          -- this is for vsnip, if you're using other
          -- snippet engine, please refer to the `nvim-cmp` guide
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        { name = 'buffer' }
      })
    })
  end,
}

