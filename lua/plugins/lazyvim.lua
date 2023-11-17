return {
  "LazyVim/LazyVim",
  opts = function(_, opts)
    if vim.fn.getenv("COLORTERM") == "truecolor" then
      opts.colorscheme = "moonfly"
    else
      opts.colorscheme = "torte"
    end
  end,
}
