return {
  "neanias/everforest-nvim",
  lazy = true,
  config = function(_, opts)
    require("everforest").setup(opts)
  end
}
