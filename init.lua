-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("luasnip.loaders.from_lua").load({ paths = { "~/snippets" } })
local lspconfig = require("lspconfig")

lspconfig.helm_ls.setup({
  settings = {
    ["helm-ls"] = {
      valueFiles = {
        mainValueFile = "values.yaml",
      },
      yamlls = {
        enabled = true,
        path = "yaml-language-server",
        config = {
          schemas = {
            ["file:///home/wispo/.datree/crdSchemas/wcd.wispo/desktopimage_v1.json"] = "*desktopimage*.yaml",
            kubernetes = "templates/**",
          },
          completion = true,
          hover = true,
        },
      },
    },
  },
})
