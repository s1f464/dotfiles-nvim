return {
  "neanias/everforest-nvim",
  lazy = true,
  opts = {
    background = "hard",
  },
  config = function(_, opts)
    require("everforest").setup(opts)
  end,
}
