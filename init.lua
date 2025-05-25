-- :help lua-guide-variables
-- vim.g.mapleader must be set before loading lazy
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.snacks_animate = false

-- :help lua-guide-options
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true
vim.opt.wrap = false

-- :help lua-guide-mappings
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- :help lua-guide-autocommands
vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  callback = function()
    vim.opt.guicursor = "a:hor10-blinkwait500-blinkon500-blinkoff500"
  end,
  desc = "Restore cursor style",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "css",
    "html",
    "json",
    "jsonc",
    "lua",
    "toml",
    "yaml",
  },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
  desc = "Use 2 spaces for indentation",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "nginx",
  },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
  desc = "Use 4 spaces for indentation",
})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Briefly highlight yanked text",
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf

    vim.keymap.set(
      "n",
      "gd",
      vim.lsp.buf.definition,
      { desc = "Go to definition", buffer = bufnr }
    )
    vim.keymap.set(
      "n",
      "gD",
      vim.lsp.buf.declaration,
      { desc = "Go to declaration", buffer = bufnr }
    )
    vim.keymap.set(
      "n",
      "gy",
      vim.lsp.buf.type_definition,
      { desc = "Go to type definition", buffer = bufnr }
    )
    vim.keymap.set(
      "n",
      "gi",
      vim.lsp.buf.implementation,
      { desc = "Go to implementation", buffer = bufnr }
    )
    vim.keymap.set(
      { "n", "v" },
      "<leader>a",
      vim.lsp.buf.code_action,
      { desc = "Perform code action", buffer = bufnr }
    )
    vim.keymap.set(
      "n",
      "<leader>r",
      vim.lsp.buf.rename,
      { desc = "Rename symbol", buffer = bufnr }
    )
  end,
  desc = "Set key mappings for vim.lsp.buf",
})

-- :help lua-guide-commands
vim.api.nvim_create_user_command("LazyInstall", function()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

  if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "--branch=stable",
      "https://github.com/folke/lazy.nvim.git",
      lazypath,
    })
  end
end, { desc = "Install lazy plugin manager" })

vim.diagnostic.config({ virtual_text = true })

if vim.env.LAZY_DISABLED ~= "1" then
  require("lazyinit")
end
