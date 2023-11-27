return {
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nightflyTransparent = true
      vim.cmd.colorscheme 'nightfly'
    end
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    -- config = function()
    --   require 'nordic'.load()
    -- end
  }
}
