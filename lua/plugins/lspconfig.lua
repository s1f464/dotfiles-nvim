return {
  "neovim/nvim-lspconfig",
  opts = {
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    servers = {
      astro = {},
      bashls = {
        mason = false,
      },
      biome = {},
      cssls = {
        mason = false,
      },
      gopls = {
        mason = false,
      },
      html = {
        mason = false,
      },
      jsonls = {
        mason = false,
      },
      lua_ls = {
        mason = false,
      },
      pylsp = {
        mason = false,
      },
      ruff_lsp = {
        mason = false,
      },
      rust_analyzer = {
        mason = false,
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              features = "all",
            },
          },
        },
      },
      svelte = {
        mason = false,
      },
      taplo = {
        mason = false,
      },
      vtsls = {},
      yamlls = {
        mason = false,
      },
    },
  },
}
