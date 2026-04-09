vim.pack.add({ "https://github.com/neanias/everforest-nvim" })

require("everforest").setup({
  background = "hard",
  disable_italic_comments = true,
  colours_override = function(palette)
    palette.bg_dim = "#000000"
    palette.bg0 = "#000000"
    palette.bg1 = "#0a0e0c"
    palette.bg2 = "#131715"
  end,
})
if vim.env.COLORTERM == "truecolor" or vim.g.neovide then
  vim.cmd.colorscheme("everforest")
end
