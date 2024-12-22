return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
      require("oil").setup() {
        vim.keymap.set("n", "<leader>fs", "<cmd>Oil<CR>")
      }
    end,

  }
}
