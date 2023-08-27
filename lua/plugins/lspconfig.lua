return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      bashls = {
        mason = false,
      },
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
        cmd = { "rustup", "run", "stable", "rust-analyzer" },
      },
      taplo = {
        mason = false,
      },
    },
  },
}
