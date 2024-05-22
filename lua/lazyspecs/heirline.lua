return {
  -- A no-nonsense Neovim Statusline plugin designed around recursive
  -- inheritance to be exceptionally fast and versatile.
  "rebelot/heirline.nvim",
  event = "VeryLazy",
  dependencies = {
    -- A performant lsp progress status for Neovim.
    "linrongbin16/lsp-progress.nvim",
  },
  opts = function()
    local align = { provider = "%=" }
    local space = { provider = " " }

    local file_path = { provider = "%<%f" }

    local file_flags = { provider = "%h%m%r" }

    local ruler = { provider = "%-14.(%l,%c%V%) %P" }

    local lsp_progress = {
      provider = function()
        return require("lsp-progress").progress()
      end,
      update = {
        "User",
        pattern = "LspProgressStatusUpdated",
        callback = vim.schedule_wrap(function()
          vim.cmd("redrawstatus")
        end),
      },
    }

    local statusline = {
      file_path,
      space,
      file_flags,
      space,
      lsp_progress,
      align,
      ruler,
    }

    return {
      statusline = statusline,
    }
  end,
}
