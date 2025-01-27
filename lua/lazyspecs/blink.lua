return {
  -- Performant, batteries-included completion plugin for Neovim
  "saghen/blink.cmp",
  version = "*",
  event = "InsertEnter",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
      },
      list = {
        selection = {
          preselect = false,
        },
      },
    },
    keymap = {
      preset = "enter",
    },
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
