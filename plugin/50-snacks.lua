vim.pack.add({
  {
    src = "https://github.com/folke/snacks.nvim",
    version = vim.version.range("*"),
  },
})

require("snacks").setup({
  bigfile = { enabled = true, size = 512 * 1024 },
  indent = { enabled = true },
  notifier = {
    enabled = true,
    icons = {
      error = "E",
      warn = "W",
      info = "I",
      debug = "D",
      trace = "T",
    },
  },
  picker = { enabled = true },
  quickfile = { enabled = true },
})

vim.keymap.set(
  "n",
  "<leader>f",
  Snacks.picker.smart,
  { desc = "Open file picker" }
)

vim.keymap.set(
  "n",
  "<leader>b",
  Snacks.picker.buffers,
  { desc = "Open buffer picker" }
)

vim.keymap.set(
  "n",
  "<leader>d",
  Snacks.picker.diagnostics_buffer,
  { desc = "Open diagnostic picker" }
)

vim.api.nvim_create_user_command("ConfigFind", function()
  Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
end, {
  desc = "Find config files",
})
