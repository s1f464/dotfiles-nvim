vim.pack.add({
  {
    src = "https://github.com/folke/lazydev.nvim",
    -- https://github.com/folke/lazydev.nvim/issues/136
    --version = vim.version.range("*"),
  },
})

require("lazydev").setup({
  library = {
    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
  },
})
