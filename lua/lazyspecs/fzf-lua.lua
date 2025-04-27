return {
  -- Improved fzf.vim written in lua
  "ibhagwan/fzf-lua",
  cmd = { "FzfLua", "ConfigFind" },
  keys = {
    {
      "<leader>f",
      "<cmd>FzfLua files<cr>",
      desc = "Open file picker",
    },
    {
      "<leader>b",
      "<cmd>FzfLua buffers<cr>",
      desc = "Open buffer picker",
    },
    {
      "<leader>s",
      "<cmd>FzfLua lsp_document_symbols<cr>",
      desc = "Open symbol picker",
    },
    {
      "<leader>S",
      "<cmd>FzfLua lsp_workspace_symbols<cr>",
      desc = "Open workspace symbol picker",
    },
    {
      "<leader>d",
      "<cmd>FzfLua diagnostics_document<cr>",
      desc = "Open diagnostic picker",
    },
    {
      "<leader>D",
      "<cmd>FzfLua diagnostics_workspace<cr>",
      desc = "Open workspace diagnostic picker",
    },
  },
  opts = {
    "max-perf",
    winopts = {
      fullscreen = true
    }
  },
  config = function(_, opts)
    local fzf = require("fzf-lua")
    fzf.setup(opts)

    vim.api.nvim_create_user_command("ConfigFind", function()
      fzf.files({ cwd = vim.fn.stdpath("config") })
    end, {
      desc = "Find config files",
    })
  end,
}
