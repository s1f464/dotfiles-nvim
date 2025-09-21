return {
  -- Syntax aware text-objects, select, move, swap, and peek support.
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
  event = "VeryLazy",
  opts = {},
  keys = {
    -- Select
    {
      "af",
      mode = { "x", "o" },
      function()
        require("nvim-treesitter-textobjects.select").select_textobject(
          "@function.outer",
          "textobjects"
        )
      end,
      desc = "function",
    },
    {
      "if",
      mode = { "x", "o" },
      function()
        require("nvim-treesitter-textobjects.select").select_textobject(
          "@function.inner",
          "textobjects"
        )
      end,
      desc = "inner function",
    },
    {
      "ac",
      mode = { "x", "o" },
      function()
        require("nvim-treesitter-textobjects.select").select_textobject(
          "@class.outer",
          "textobjects"
        )
      end,
      desc = "class",
    },
    {
      "ic",
      mode = { "x", "o" },
      function()
        require("nvim-treesitter-textobjects.select").select_textobject(
          "@class.inner",
          "textobjects"
        )
      end,
      desc = "inner class",
    },
    -- Move
    {
      "]m",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_next_start(
          "@function.outer",
          "textobjects"
        )
      end,
      desc = "Next function start",
    },
    {
      "]c",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_next_start(
          "@class.outer",
          "textobjects"
        )
      end,
      desc = "Next class start",
    },
    {
      "]a",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_next_start(
          "@parameter.inner",
          "textobjects"
        )
      end,
      desc = "Next parameter start",
    },
    {
      "]M",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_next_end(
          "@function.outer",
          "textobjects"
        )
      end,
      desc = "Next function end",
    },
    {
      "]C",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_next_end(
          "@class.outer",
          "textobjects"
        )
      end,
      desc = "Next class end",
    },
    {
      "]A",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_next_end(
          "@parameter.inner",
          "textobjects"
        )
      end,
      desc = "Next parameter end",
    },
    {
      "[m",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_start(
          "@function.outer",
          "textobjects"
        )
      end,
      desc = "Previous function start",
    },
    {
      "[c",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_start(
          "@class.outer",
          "textobjects"
        )
      end,
      desc = "Previous class start",
    },
    {
      "[a",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_start(
          "@parameter.inner",
          "textobjects"
        )
      end,
      desc = "Previous parameter start",
    },
    {
      "[M",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_end(
          "@function.outer",
          "textobjects"
        )
      end,
      desc = "Previous function end",
    },
    {
      "[C",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_end(
          "@class.outer",
          "textobjects"
        )
      end,
      desc = "Previous class end",
    },
    {
      "[A",
      mode = { "n", "x", "o" },
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_end(
          "@parameter.inner",
          "textobjects"
        )
      end,
      desc = "Previous parameter end",
    },
  },
}
