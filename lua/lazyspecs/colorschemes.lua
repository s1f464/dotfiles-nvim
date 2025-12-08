return {
  -- A Lua port of the Everforest colour scheme.
  "neanias/everforest-nvim",
  lazy = false,
  priority = 1000,
  opts = {
    background = "hard",
    disable_italic_comments = true,
    colours_override = function(palette)
      palette.bg_dim = "#000000"
      palette.bg0 = "#000000"
      palette.bg1 = "#0a0e0c"
      palette.bg2 = "#131715"
    end,
  },
  config = function(_, opts)
    require("everforest").setup(opts)

    if vim.env.COLORTERM == "truecolor" or vim.g.neovide then
      vim.cmd([[colorscheme everforest]])
    end
  end,
}
