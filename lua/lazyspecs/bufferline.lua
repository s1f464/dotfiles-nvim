return {
  -- A snazzy bufferline for Neovim
  "akinsho/bufferline.nvim",
  version = "*",
  event = "VeryLazy",
  opts = {
    options = {
      indicator = { style = "none" },
      buffer_close_icon = "x",
      modified_icon = "[+]",
      close_icon = "x",
      left_trunc_marker = "←",
      right_trunc_marker = "→",
      max_name_length = 10,
      max_prefix_length = 8,
      tab_size = 10,
      diagnostics = "nvim_lsp",
      show_buffer_icons = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
      always_show_bufferline = false,
    },
  },
}
