return {
  {
    'bluz71/vim-nightfly-colors',
    name = 'nightfly',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nightflyTransparent = true
      -- vim.cmd.colorscheme 'nightfly'
    end,
  },
  {
    'neanias/everforest-nvim',
    versoin = false,
    lazy = false,
    priority = 1000,
    config = function()
      require('everforest').setup {
        transparent_background_level = 1,
        ui_contrast = 'high',
        colours_override = function(palette)
          palette.red = '#b86466'
        end,
      }

      vim.cmd.colorscheme 'everforest'
    end,
  },
}
