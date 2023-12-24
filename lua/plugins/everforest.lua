return {
  "neanias/everforest-nvim",
  lazy = true,
  opts = {
    background = "hard",
    colours_override = function(palette)
      palette.bg_dim = "#000000"
      palette.bg0 = "#010101"
      palette.bg1 = "#0a0e0c"
      palette.bg2 = "#131715"
      palette.bg3 = "#1d2120"
      palette.bg4 = "#252726"
      --palette.bg5 = "#2b3128"
    end,
  },
  config = function(_, opts)
    require("everforest").setup(opts)
  end,
}
