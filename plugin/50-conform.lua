vim.pack.add({
  {
    src = "https://github.com/stevearc/conform.nvim",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "conform.nvim",
  event = "BufWritePre",
  cmd = {
    "ConformInfo",
    "Format",
    "FormatDisable",
    "FormatEnable",
  },
  after = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        bash = { "shfmt" },
        css = { "prettier" },
        go = { "goimports" },
        html = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        sh = { "shfmt" },
        sql = { "sql_formatter" },
      },
      format_on_save = function(bufnr)
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
        return { timeout_ms = 500, lsp_format = "fallback" }
      end,
    })

    vim.api.nvim_create_user_command("Format", function(args)
      local range = nil
      if args.count ~= -1 then
        local end_line =
          vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
        range = {
          start = { args.line1, 0 },
          ["end"] = { args.line2, end_line:len() },
        }
      end
      require("conform").format({
        async = true,
        lsp_format = "fallback",
        range = range,
      })
    end, { desc = "Format buffer", range = true })

    vim.api.nvim_create_user_command("FormatDisable", function(args)
      if args.bang then
        vim.b.disable_autoformat = true
      else
        vim.g.disable_autoformat = true
      end
    end, { desc = "Disable autoformat-on-save", bang = true })
    vim.api.nvim_create_user_command("FormatEnable", function()
      vim.b.disable_autoformat = false
      vim.g.disable_autoformat = false
    end, { desc = "Re-enable autoformat-on-save" })
  end,
})
