return {
  -- A performant lsp progress status for Neovim.
  "linrongbin16/lsp-progress.nvim",
  lazy = true,
  opts = {
    format = function(client_messages)
      if #client_messages > 0 then
        return table.concat(client_messages, " ")
      end
      return ""
    end,
  },
}
