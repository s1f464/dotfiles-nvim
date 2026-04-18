vim.pack.add({
  {
    src = "https://github.com/folke/lazydev.nvim",
    -- https://github.com/folke/lazydev.nvim/issues/136
    --version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "lazydev.nvim",
  cmd = "LazyDev",
  ft = "lua",
  after = function()
    require("lazydev").setup({
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    })
  end,
})
