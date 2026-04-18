vim.pack.add({
  {
    src = "https://github.com/folke/which-key.nvim",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "which-key.nvim",
  event = "DeferredUIEnter",
  after = function()
    require("which-key").setup({
      preset = "helix",
    })
  end,
})
