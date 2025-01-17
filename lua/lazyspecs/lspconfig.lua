return {
  -- Quickstart configs for Nvim LSP
  -- :help lspconfig-server-configurations
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    -- nvim-cmp source for neovim builtin LSP client
    "hrsh7th/cmp-nvim-lsp",
  },
  opts = {
    servers = {
      astro = {},
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
      pylsp = {},
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
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    for s, o in pairs(opts.servers) do
      lspconfig[s].setup(
        vim.tbl_deep_extend("force", o, { capabilities = capabilities })
      )
    end
  end,
}
