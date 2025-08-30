-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- numéro relatif uniquement en mode normal
vim.api.nvim_create_autocmd({ "InsertEnter", "WinEnter" }, {
  pattern = "*",
  command = "set relativenumber",
})
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  pattern = "*",
  command = "set norelativenumber",
})
