return {
  -- A highly extendable fuzzy finder over lists.
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    -- fzf sorter for telescope written in C.
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      enabled = function()
        return vim.fn.executable("make") == 1
      end,
      config = function()
        require("telescope").load_extension("fzf")
      end,
      build = "make",
    },
    -- Set vim.ui.select to telescope.
    {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
        require("telescope").load_extension("ui-select")
      end,
    },
    -- A Lua library for neovim.
    "nvim-lua/plenary.nvim",
  },
  cmd = { "Telescope", "ConfigFind" },
  keys = {
    {
      "<leader>f",
      "<cmd>Telescope find_files<cr>",
      desc = "Find files",
    },
    {
      "<leader>e",
      "<cmd>Telescope live_grep<cr>",
      desc = "Live grep",
    },
    {
      "<leader>b",
      "<cmd>Telescope buffers<cr>",
      desc = "Buffers",
    },
    {
      "<leader>d",
      "<cmd>Telescope diagnostics<cr>",
      desc = "Workspace diagnostics",
    },
  },
  config = function()
    require("telescope").setup()

    local builtin = require("telescope.builtin")

    vim.api.nvim_create_user_command("ConfigFind", function(opts)
      builtin.find_files({
        cwd = vim.fn.stdpath("config"),
        search_file = opts.fargs[1],
      })
    end, {
      desc = "Find config files",
      nargs = "?",
    })
  end,
}
