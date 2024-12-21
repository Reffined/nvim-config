-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("luasnip.loaders.from_lua").load({ paths = { "~/snippets" } })
local lspconfig = require("lspconfig")

lspconfig.omnisharp.setup({
  cmd = { "OmniSharp" },
  settings = {
    FormattingOptions = {
      -- Enables support for reading code style, naming convention and analyzer
      -- settings from .editorconfig.
      EnableEditorConfigSupport = true,
      -- Specifies whether 'using' directives should be grouped and sorted during
      -- document formatting.
      OrganizeImports = true,
    },
    MsBuild = {
      -- If true, MSBuild project system will only load projects for files that
      -- were opened in the editor. This setting is useful for big C# codebases
      -- and allows for faster initialization of code navigation features only
      -- for projects that are relevant to code that is being edited. With this
      -- setting enabled OmniSharp may load fewer projects and may thus display
      -- incomplete reference lists for symbols.
      LoadProjectsOnDemand = true,
    },
    RoslynExtensionsOptions = {
      -- Enables support for roslyn analyzers, code fixes and rulesets.
      EnableAnalyzersSupport = true,
      -- Enables support for showing unimported types and unimported extension
      -- methods in completion lists. When committed, the appropriate using
      -- directive will be added at the top of the current file. This option can
      -- have a negative impact on initial completion responsiveness,
      -- particularly for the first few completion sessions after opening a
      -- solution.
      EnableImportCompletion = true,
      -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
      -- true
      AnalyzeOpenDocumentsOnly = true,
    },
    Sdk = {
      -- Specifies whether to include preview versions of the .NET SDK when
      -- determining which version to use for project loading.
      IncludePrereleases = true,
    },
  },
})

vim.api.nvim_set_keymap("n", "<C-m>", ":delm!<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>m", ":MarkdownPreview<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>tg", ":!templ generate<CR>", { desc = "templ generate" })
vim.api.nvim_set_keymap("i", "<C-o>", "<CR>", {})
vim.keymap.set("n", "<leader>clr", ":LspRestart<CR>", { desc = "Lsp Restart" })
vim.keymap.set("n", "<leader>cli", ":LspInfo<CR>", { desc = "Lsp Info" })
