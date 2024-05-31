return {
  -- Neovim file explorer: edit your filesystem like a buffer
  "stevearc/oil.nvim",
  version = "*",
  opts = {},
  keys = {
    {
      "-",
      function()
        require("oil").open()
      end,
      desc = "Open parent directory",
    },
  },
}
