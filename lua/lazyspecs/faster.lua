return {
  -- Selectively disable some features when big file is opened or macro is
  -- executed.
  "pteroctopus/faster.nvim",
  opts = {
    behaviours = {
      bigfile = {
        filesize = 1,
      },
    },
  },
}
