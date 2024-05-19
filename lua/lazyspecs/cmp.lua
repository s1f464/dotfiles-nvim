return {
  -- A completion engine plugin
  "hrsh7th/nvim-cmp",
  version = false,
  event = "InsertEnter",
  dependencies = {
    -- Snippet engine for Neovim written in Lua
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
    },
    -- nvim-cmp source for buffer words
    "hrsh7th/cmp-buffer",
    -- nvim-cmp source for neovim builtin LSP client
    "hrsh7th/cmp-nvim-lsp",
    -- nvim-cmp source for path
    "hrsh7th/cmp-path",
    -- luasnip completion source for nvim-cmp
    "saadparwaiz1/cmp_luasnip",
  },
  opts = function()
    local cmp = require("cmp")

    return {
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    }
  end,
}
