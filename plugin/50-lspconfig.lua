vim.pack.add({
  {
    src = "https://github.com/neovim/nvim-lspconfig",
    version = vim.version.range("*"),
  },
}, {
  load = function() end,
})

require("lze").load({
  "nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  after = function()
    local servers = {
      "astro",
      "bashls",
      "biome",
      "cssls",
      "gopls",
      "html",
      "jsonls",
      "lua_ls",
      "markdown_oxide",
      "prismals",
      "ruff",
      "rust_analyzer",
      "svelte",
      "tailwindcss",
      "taplo",
      "tsgo",
      "ty",
      "yamlls",
    }

    for _, server in ipairs(servers) do
      vim.lsp.enable(server)
    end
  end,
})
