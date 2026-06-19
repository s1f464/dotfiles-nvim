vim.pack.add({
  {
    src = "https://github.com/lewis6991/gitsigns.nvim",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "gitsigns.nvim",
  event = { "BufReadPost", "BufNewFile" },
})
