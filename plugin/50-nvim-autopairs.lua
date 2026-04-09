vim.pack.add({
  {
    src = "https://github.com/windwp/nvim-autopairs",
    version = vim.version.range("*"),
  },
})

require("nvim-autopairs").setup()
