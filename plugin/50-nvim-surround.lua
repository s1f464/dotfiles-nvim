vim.pack.add({
  {
    src = "https://github.com/kylechui/nvim-surround",
    version = vim.version.range("4.x"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "nvim-surround",
  keys = {
    { "ys", desc = "Add a surrounding pair around a motion" },
    { "yss", desc = "Add a surrounding pair around the current line" },
    { "yS", desc = "Add a surrounding pair around a motion (new lines)" },
    {
      "ySS",
      desc = "Add a surrounding pair around the current line (new lines)",
    },
    { "ds", desc = "Delete a surrounding pair" },
    { "cs", desc = "Change a surrounding pair" },
    { "cS", desc = "Change a surrounding pair (new lines)" },
    { "S", mode = "x", desc = "Add a surrounding pair (visual mode)" },
    {
      "gS",
      mode = "x",
      desc = "Add a surrounding pair (visual mode, new lines)",
    },
    { "<C-g>s", mode = "i", desc = "Add a surrounding pair (insert mode)" },
    {
      "<C-g>S",
      mode = "i",
      desc = "Add a surrounding pair (insert mode, new lines)",
    },
  },
  after = function()
    require("nvim-surround").setup()
  end,
})
