return {
  "LunarVim/bigfile.nvim",
  event = { "FileReadPre", "BufReadPre" },
  opts = {
    filesize = 1, -- size of the file in MiB, the plugin round file sizes to the closest MiB
  },
}
