vim.pack.add({
  {
    src = "https://github.com/saghen/blink.cmp",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "blink.cmp",
  event = "InsertEnter",
  after = function()
    require("blink.cmp").setup({
      cmdline = {
        enabled = false,
      },
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
        default = { "lsp", "path", "snippets", "buffer" },
        per_filetype = {
          lua = { inherit_defaults = true, "lazydev" },
        },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },
    })
  end,
})
