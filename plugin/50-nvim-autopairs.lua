vim.pack.add({
  {
    src = "https://github.com/windwp/nvim-autopairs",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "nvim-autopairs",
  event = "InsertEnter",
  after = function()
    require("nvim-autopairs").setup()
  end,
})
