require("config.lazy")

local set = vim.opt
set.number = true
set.relativenumber = true
set.expandtab = true
set.tabstop = 4
set.shiftwidth = 4
set.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

vim.keymap.set("n", "M-j", "<cmd>cnext<CR>")
vim.keymap.set("n", "M-k", "<cmd>cprev<CR>")


vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
