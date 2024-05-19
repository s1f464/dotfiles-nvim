local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  return
end

vim.opt.rtp:prepend(lazypath)

local opts = {
  concurrency = 2,
  install = {
    missing = false,
  },
  checker = {
    enabled = false,
    concurrency = 2,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}

require("lazy").setup("lazyspecs", opts)
