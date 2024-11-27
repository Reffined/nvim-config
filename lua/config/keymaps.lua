-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<leader>h", function()
  require("luasnip.loaders").edit_snippet_files()
end, { desc = "Edit Snippets" })

vim.keymap.set("n", "<c-x>", function()
  Snacks.terminal()
end, {})
vim.keymap.set("t", "<c-x>", "<cmd>close<cr>", {})

vim.keymap.del("n", "<leader>e")

vim.keymap.set("n", "<leader>e", "<leader>E", { desc = "tree view (cwd)", remap = true })
