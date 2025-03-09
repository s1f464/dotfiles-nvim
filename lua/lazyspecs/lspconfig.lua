return {
  -- Quickstart configs for Nvim LSP
  -- :help lspconfig-server-configurations
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    -- Performant, batteries-included completion plugin for Neovim
    "saghen/blink.cmp",
  },
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
  config = function(_, opts)
    local lspconfig = require("lspconfig")

    for s, o in pairs(opts.servers) do
      o.capabilities = require("blink.cmp").get_lsp_capabilities(o.capabilities)
      lspconfig[s].setup(o)
    end
  end,
}
