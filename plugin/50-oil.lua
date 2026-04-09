vim.pack.add({
  {
    src = "https://github.com/stevearc/oil.nvim",
    version = vim.version.range("*"),
  },
})

require("oil").setup()

vim.keymap.set("n", "-", function()
  require("oil").open()
end, { desc = "Open parent directory" })
