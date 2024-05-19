return {
  -- A snazzy bufferline for Neovim
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  opts = {
    options = {
      buffer_close_icon = "x",
      close_icon = "x",
      diagnostics = "nvim_lsp",
      show_biffer_icons = false,
      show_buffer_close_icons = false,
      always_show_bufferline = false,
    },
  },
}
