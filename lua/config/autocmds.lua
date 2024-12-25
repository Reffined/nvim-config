-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function java_on_save()
  local api = vim.api
  local current_buf = api.nvim_get_current_buf()
  local path = api.nvim_buf_get_name(current_buf)
  local formatter = ":%delete | r !/home/havok/.local/share/nvim/mason/packages/google-java-format/google-java-format"
  api.nvim_command(formatter .. " " .. path)
end

vim.api.nvim_create_autocmd("BufWritePre", { pattern = "*.java", callback = java_on_save })
