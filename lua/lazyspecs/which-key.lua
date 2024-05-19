return {
  -- WhichKey is a lua plugin for Neovim 0.5 that displays a popup with possible
  -- key bindings of the command you started typing.
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    window = { margin = { 1, 0, 0, 0.6 } },
    layout = { height = { min = 4, max = 75 } },
  },
}
