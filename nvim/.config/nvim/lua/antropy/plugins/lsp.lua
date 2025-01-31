return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "stevearc/conform.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          { path = "lazy.nvim",          words = { "LazyVim" } },
          { path = "snacks.nvim",        words = { "Snacks" } },
        },
      },
    },
  },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
    require("mason").setup()
    ---@diagnostic disable: missing-fields
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "gopls",
      },
    })
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lspconfig = require('lspconfig')

    lspconfig.lua_ls.setup({ capabilities = capabilities })
    lspconfig.rust_analyzer.setup({ capabilities = capabilities })
    lspconfig.gopls.setup({ capabilities = capabilities })
  end
}
