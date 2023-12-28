return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 25,
    },
    default_component_configs = {
      indent = {
        expander_collapsed = ">",
        expander_expanded = "v",
      },
      icon = {
        folder_closed = "f",
        folder_open = "F",
        folder_empty = "e",
      },
      git_status = {
        symbols = {
          added = "",
          deleted = "[d",
          modified = "",
          renamed = "[r",
          untracked = "[u",
          ignored = "[i",
          unstaged = "[U",
          staged = "[s",
          conflict = "[c",
        },
      },
    },
  },
}
