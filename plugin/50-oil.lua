vim.pack.add({
  {
    src = "https://github.com/stevearc/oil.nvim",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "oil.nvim",
  keys = {
    {
      "-",
      function()
        require("oil").open()
      end,
      desc = "Open parent directory",
    },
  },
  after = function()
    require("oil").setup()
  end,
})
