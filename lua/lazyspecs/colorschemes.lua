return {
  -- Monokai Pro theme for Neovim
  "loctvl842/monokai-pro.nvim",
  priority = 1000,
  config = function()
    if vim.env.COLORTERM == "truecolor" then
      vim.cmd([[colorscheme monokai-pro]])
    end
  end,
}
