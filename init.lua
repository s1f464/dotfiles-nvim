-- :help lua-guide-variables
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.snacks_animate = false

local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
}

for _, plugin in ipairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

-- :help lua-guide-options
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5
vim.opt.shortmess:append("I")
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
    "fish",
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
    vim.hl.on_yank()
  end,
  desc = "Briefly highlight yanked text",
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("my.lsp", {}),
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if not client then
      return
    end
    local bufnr = ev.buf

    if client:supports_method("textDocument/definition") then
      vim.keymap.set(
        "n",
        "gd",
        vim.lsp.buf.definition,
        { desc = "Go to definition", buffer = bufnr }
      )
    end
  end,
  desc = "Set key mappings for vim.lsp.buf",
})

-- :help lua-guide-commands
vim.api.nvim_create_user_command("PackPrune", function()
  local plugins = vim
    .iter(vim.pack.get())
    :filter(function(x)
      return not x.active
    end)
    :map(function(x)
      return x.spec.name
    end)
    :totable()

  if #plugins == 0 then
    vim.notify("No non-active plugins to prune", vim.log.levels.INFO)
    return
  end

  local msg = "Remove the following plugins?\n" .. table.concat(plugins, " ")
  local choice = vim.fn.confirm(msg, "&Yes\n&No", 2)
  if choice == 1 then
    vim.pack.del(plugins)
  end
end, {
  desc = "Remove non-active plugins from disk",
})

vim.api.nvim_create_user_command("InlayHintToggle", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, {
  desc = "Toggle inlay hints",
})

vim.diagnostic.config({ virtual_text = true })

if vim.g.neovide then
  vim.o.guifont = "monospace:h11"
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_refresh_rate_idle = 1
  vim.g.neovide_cursor_antialiasing = false

  vim.g.neovide_position_animation_length = 0
  vim.g.neovide_cursor_animation_length = 0.00
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_scroll_animation_far_lines = 0
  vim.g.neovide_scroll_animation_length = 0.00
end
