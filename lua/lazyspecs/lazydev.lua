return {
  -- Faster LuaLS setup for Neovim
  "folke/lazydev.nvim",
  ft = "lua",
  opts = {
    library = {
      "luvit-meta/library",
    },
  },
}
