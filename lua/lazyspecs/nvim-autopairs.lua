return {
  -- A super powerful autopair plugin for Neovim that supports multiple characters.
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependencies = {
    -- A completion engine plugin
    "hrsh7th/nvim-cmp",
  },
  config = function(_, opts)
    require("nvim-autopairs").setup(opts)
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
