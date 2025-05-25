return {
  -- A collection of QoL plugins for Neovim
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true, size = 512 * 1024 },
    indent = { enabled = true },
    notifier = {
      enabled = true,
      icons = {
        error = "E",
        warn = "W",
        info = "I",
        debug = "D",
        trace = "T",
      },
    },
    quickfile = { enabled = true },
  },
}
