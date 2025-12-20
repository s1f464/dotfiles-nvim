return {
  -- Use treesitter to auto close and auto rename html tag
  "windwp/nvim-ts-autotag",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
}
