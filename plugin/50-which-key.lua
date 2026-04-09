vim.pack.add({
  {
    src = "https://github.com/folke/which-key.nvim",
    version = vim.version.range("*"),
  },
})

require("which-key").setup({
  preset = "helix",
})
