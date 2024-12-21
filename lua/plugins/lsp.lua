return {
  "neovim/nvim-lspconfig",
  keys = {
    { "<leader>r", vim.lsp.buf.rename, desc = "Rename Symbol" },
  },
  opts = {
    servers = {
      tsserver = {
        settings = {
          typescript = {
            format = {
              indentSize = 2,
              tabSize = 2,
              convertTabToSpaces = true,
            },
          },
          javascript = {
            format = {
              indentSize = 2,
              tabSize = 2,
              convertTabsToSpaces = true,
            },
          },
        },
      },
    },
  },
}
