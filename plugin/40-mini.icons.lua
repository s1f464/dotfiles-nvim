vim.pack.add({
  {
    src = "https://github.com/nvim-mini/mini.icons",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "mini.icons",
  event = "DeferredUIEnter",
  after = function()
    require("mini.icons").setup()
  end,
})
