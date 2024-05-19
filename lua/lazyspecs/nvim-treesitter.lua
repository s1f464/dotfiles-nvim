return {
  -- Nvim Treesitter configurations and abstraction layer
  "nvim-treesitter/nvim-treesitter",
  event = { "VeryLazy" },
  lazy = vim.fn.argc(-1) == 0,
  build = ":TSUpdate",
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
