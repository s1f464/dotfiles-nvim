vim.pack.add({
  {
    src = "https://github.com/dstein64/vim-startuptime",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "vim-startuptime",
  cmd = "StartupTime",
})
