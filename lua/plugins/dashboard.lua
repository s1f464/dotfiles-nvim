return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local version = vim.split(vim.fn.execute("version"), "\n")[3]:sub(6)
    local logo = string.rep("\n", 8) .. string.format("NVIM %s", version) .. "\n\n"
    opts.config.header = vim.split(logo, "\n")
  end,
}
