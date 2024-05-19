return {
  -- Git integration for buffers.
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = true,
}
