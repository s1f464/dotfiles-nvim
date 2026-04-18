vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == "nvim-treesitter" and kind == "update" then
      if not ev.data.active then
        vim.cmd.packadd("nvim-treesitter")
      end
      vim.cmd("TSUpdate")
    end
  end,
})

vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" }, {
  load = function() end,
})

require("lze").load({
  "nvim-treesitter",
  event = "DeferredUIEnter",
  cmd = {
    "TSInstall",
    "TSInstallFromGrammar",
    "TSLog",
    "TSUninstall",
    "TSUpdate",
  },
  after = function()
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("my.treesitter", { clear = true }),
      callback = function(ev)
        local treesitter = require("nvim-treesitter")
        local lang = vim.treesitter.language.get_lang(ev.match)

        if vim.list_contains(treesitter.get_installed(), lang) then
          vim.treesitter.start(ev.buf)
        end
      end,
      desc = "Start treesitter highlighting",
    })
  end,
})
