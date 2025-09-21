return {
  -- Quickstart configs for Nvim LSP
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    servers = {
      astro = {},
      basedpyright = {},
      bashls = {},
      biome = {},
      cssls = {},
      gopls = {},
      html = {},
      jsonls = {},
      lua_ls = {
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      },
      prismals = {},
      ruff = {},
      rust_analyzer = {},
      svelte = {},
      tailwindcss = {},
      taplo = {},
      vtsls = {
        settings = {
          typescript = {
            inlayHints = {
              parameterNames = { enabled = "literals" },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
          },
        },
      },
      yamlls = {},
    },
  },
  config = function()
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
    vim.lsp.config("vtsls", {
      settings = {
        typescript = {
          inlayHints = {
            parameterNames = { enabled = "literals" },
            parameterTypes = { enabled = true },
            variableTypes = { enabled = true },
            propertyDeclarationTypes = { enabled = true },
            functionLikeReturnTypes = { enabled = true },
            enumMemberValues = { enabled = true },
          },
        },
      },
    })
    vim.lsp.enable("yamlls")
  end,
}
