vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
}, {
  load = function() end,
})

require("lze").load({
  "nvim-treesitter-textobjects",
  event = "DeferredUIEnter",
  keys = {
    {
      "af",
      function()
        require("nvim-treesitter-textobjects.select").select_textobject(
          "@function.outer",
          "textobjects"
        )
      end,
      mode = { "x", "o" },
      desc = "function",
    },
    {
      "if",
      function()
        require("nvim-treesitter-textobjects.select").select_textobject(
          "@function.inner",
          "textobjects"
        )
      end,
      mode = { "x", "o" },
      desc = "inner function",
    },
    {
      "ac",
      function()
        require("nvim-treesitter-textobjects.select").select_textobject(
          "@class.outer",
          "textobjects"
        )
      end,
      mode = { "x", "o" },
      desc = "class",
    },
    {
      "ic",
      function()
        require("nvim-treesitter-textobjects.select").select_textobject(
          "@class.inner",
          "textobjects"
        )
      end,
      mode = { "x", "o" },
      desc = "inner class",
    },

    {
      "]f",
      function()
        require("nvim-treesitter-textobjects.move").goto_next_start(
          "@function.outer",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Next function start",
    },
    {
      "]c",
      function()
        require("nvim-treesitter-textobjects.move").goto_next_start(
          "@class.outer",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Next class start",
    },
    {
      "]a",
      function()
        require("nvim-treesitter-textobjects.move").goto_next_start(
          "@parameter.inner",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Next parameter start",
    },

    {
      "]F",
      function()
        require("nvim-treesitter-textobjects.move").goto_next_end(
          "@function.outer",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Next function end",
    },
    {
      "]C",
      function()
        require("nvim-treesitter-textobjects.move").goto_next_end(
          "@class.outer",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Next class end",
    },
    {
      "]A",
      function()
        require("nvim-treesitter-textobjects.move").goto_next_end(
          "@parameter.inner",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Next parameter end",
    },

    {
      "[f",
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_start(
          "@function.outer",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Previous function start",
    },
    {
      "[c",
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_start(
          "@class.outer",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Previous class start",
    },
    {
      "[a",
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_start(
          "@parameter.inner",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Previous parameter start",
    },

    {
      "[F",
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_end(
          "@function.outer",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Previous function end",
    },
    {
      "[C",
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_end(
          "@class.outer",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Previous class end",
    },
    {
      "[A",
      function()
        require("nvim-treesitter-textobjects.move").goto_previous_end(
          "@parameter.inner",
          "textobjects"
        )
      end,
      mode = { "n", "x", "o" },
      desc = "Previous parameter end",
    },
  },
})
