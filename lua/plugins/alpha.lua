return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local version = vim.split(vim.fn.execute("version"), "\n")[3]:sub(6)
    local logo = string.format("NVIM %s", version)
    opts.section.header.val = vim.split(logo, "\n")
  end,
}
