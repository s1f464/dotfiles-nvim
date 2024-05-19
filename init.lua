-- :help lua-guide-variables
-- vim.g.mapleader must be set before loading lazy
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

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
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "css",
    "html",
    "json",
    "lua",
    "toml",
  },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Briefly highlight yanked text",
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.keymap.set(
      "n",
      "gd",
      vim.lsp.buf.definition,
      { desc = "Go to definition" }
    )
    vim.keymap.set(
      "n",
      "gD",
      vim.lsp.buf.declaration,
      { desc = "Go to declaration" }
    )
    vim.keymap.set(
      "n",
      "gy",
      vim.lsp.buf.type_definition,
      { desc = "Go to type definition" }
    )
    vim.keymap.set(
      "n",
      "gi",
      vim.lsp.buf.implementation,
      { desc = "Go to implementation" }
    )
    vim.keymap.set(
      { "n", "v" },
      "<leader>a",
      vim.lsp.buf.code_action,
      { desc = "Perform code action" }
    )
    vim.keymap.set(
      "n",
      "<leader>r",
      vim.lsp.buf.rename,
      { desc = "Rename symbol" }
    )
  end,
})

if vim.env.LAZY_DISABLED ~= "1" then
  require("lazyinit")
end
