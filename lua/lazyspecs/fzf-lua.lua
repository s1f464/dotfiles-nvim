return {
  -- Improved fzf.vim written in lua
  "ibhagwan/fzf-lua",
  cmd = { "FzfLua", "ConfigFind" },
  keys = {
    {
      "<leader>f",
      "<cmd>FzfLua files<cr>",
      desc = "Find files",
    },
    {
      "<leader>e",
      "<cmd>FzfLua live_grep<cr>",
      desc = "Live grep",
    },
    {
      "<leader>b",
      "<cmd>FzfLua buffers<cr>",
      desc = "Buffers",
    },
    {
      "<leader>d",
      "<cmd>FzfLua diagnostics_workspace<cr>",
      desc = "Workspace diagnostics",
    },
  },
  opts = {},
  config = function()
    local fzf = require("fzf-lua")

    vim.api.nvim_create_user_command("ConfigFind", function()
      fzf.files({ cwd = vim.fn.stdpath("config") })
    end, {
      desc = "Find config files",
    })
  end,
}
