vim.pack.add({
  {
    src = "https://github.com/neovim/nvim-lspconfig",
    version = vim.version.range("*"),
  },
})

vim.lsp.enable("astro")
vim.lsp.enable("basedpyright")
vim.lsp.enable("bashls")
vim.lsp.enable("biome")
vim.lsp.enable("cssls")
vim.lsp.enable("gopls")
vim.lsp.enable("html")
vim.lsp.enable("jsonls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("prismals")
vim.lsp.enable("ruff")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("svelte")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("taplo")
vim.lsp.enable("vtsls")
vim.lsp.enable("yamlls")
