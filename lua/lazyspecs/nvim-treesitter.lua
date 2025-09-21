return {
  -- Nvim Treesitter configurations and abstraction layer
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  event = "VeryLazy",
  lazy = vim.fn.argc(-1) == 0,
  build = ":TSUpdate",
  cmd = { "TSInstall", "TSLog", "TSUninstall", "TSUpdate" },
  opts = {},
  config = function(_, opts)
    local ts = require("nvim-treesitter")
    ts.setup(opts)

    vim.api.nvim_create_autocmd("BufReadPost", {
      callback = function()
        local ft = vim.bo.filetype
        local parsers = require("nvim-treesitter").get_installed("parsers")
        for _, parser in ipairs(parsers) do
          if ft == parser then
            vim.treesitter.start()
            vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end
      end,
    })
  end,
}
