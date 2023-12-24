return {
  "LazyVim/LazyVim",
  opts = function(_, opts)
    if os.getenv("COLORTERM") == "truecolor" then
      opts.colorscheme = "everforest"
    else
      opts.colorscheme = "torte"
    end
  end,
}
