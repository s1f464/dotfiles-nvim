vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
})

local select = require("nvim-treesitter-textobjects.select")

vim.keymap.set({ "x", "o" }, "af", function()
  select.select_textobject("@function.outer", "textobjects")
end, { desc = "function" })

vim.keymap.set({ "x", "o" }, "if", function()
  select.select_textobject("@function.inner", "textobjects")
end, { desc = "inner function" })

vim.keymap.set({ "x", "o" }, "ac", function()
  select.select_textobject("@class.outer", "textobjects")
end, { desc = "class" })

vim.keymap.set({ "x", "o" }, "ic", function()
  select.select_textobject("@class.inner", "textobjects")
end, { desc = "inner class" })

local move = require("nvim-treesitter-textobjects.move")

vim.keymap.set({ "n", "x", "o" }, "]f", function()
  move.goto_next_start("@function.outer", "textobjects")
end, { desc = "Next function start" })

vim.keymap.set({ "n", "x", "o" }, "]c", function()
  move.goto_next_start("@class.outer", "textobjects")
end, { desc = "Next class start" })

vim.keymap.set({ "n", "x", "o" }, "]a", function()
  move.goto_next_start("@parameter.inner", "textobjects")
end, { desc = "Next parameter start" })

vim.keymap.set({ "n", "x", "o" }, "]F", function()
  move.goto_next_end("@function.outer", "textobjects")
end, { desc = "Next function end" })

vim.keymap.set({ "n", "x", "o" }, "]C", function()
  move.goto_next_end("@class.outer", "textobjects")
end, { desc = "Next class end" })

vim.keymap.set({ "n", "x", "o" }, "]A", function()
  move.goto_next_end("@parameter.inner", "textobjects")
end, { desc = "Next parameter end" })

vim.keymap.set({ "n", "x", "o" }, "[f", function()
  move.goto_previous_start("@function.outer", "textobjects")
end, { desc = "Previous function start" })

vim.keymap.set({ "n", "x", "o" }, "[c", function()
  move.goto_previous_start("@class.outer", "textobjects")
end, { desc = "Previous class start" })

vim.keymap.set({ "n", "x", "o" }, "[a", function()
  move.goto_previous_start("@parameter.inner", "textobjects")
end, { desc = "Previous parameter start" })

vim.keymap.set({ "n", "x", "o" }, "[F", function()
  move.goto_previous_end("@function.outer", "textobjects")
end, { desc = "Previous function end" })

vim.keymap.set({ "n", "x", "o" }, "[C", function()
  move.goto_previous_end("@class.outer", "textobjects")
end, { desc = "Previous class end" })

vim.keymap.set({ "n", "x", "o" }, "[A", function()
  move.goto_previous_end("@parameter.inner", "textobjects")
end, { desc = "Previous parameter end" })
