return {
  -- Faster LuaLS setup for Neovim
  "folke/lazydev.nvim",
  ft = "lua",
  opts = {
    library = {
      vim.env.LAZY .. "/luvit-meta/library",
    },
  },
}
