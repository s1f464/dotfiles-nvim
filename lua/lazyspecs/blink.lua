return {
  -- Performant, batteries-included completion plugin for Neovim
  "saghen/blink.cmp",
  version = "*",
  event = "InsertEnter",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      cmdline = {},
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
  },
}
