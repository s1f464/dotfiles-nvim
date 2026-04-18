vim.pack.add({ "https://github.com/neanias/everforest-nvim" }, {
  load = function() end,
})

require("lze").load({
  "everforest-nvim",
  after = function()
    require("everforest").setup({
      background = "hard",
      disable_italic_comments = true,
      colours_override = function(palette)
        palette.bg_dim = "#000000"
        palette.bg0 = "#000000"
        palette.bg1 = "#0a0e0c"
        palette.bg2 = "#131715"
      end,
    })

    vim.api.nvim_create_autocmd("UIEnter", {
      once = true,
      callback = function()
        if vim.o.termguicolors then
          vim.cmd.colorscheme("everforest")
        end
      end,
    })
  end,
})
