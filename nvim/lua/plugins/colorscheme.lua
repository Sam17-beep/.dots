return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      opts.transparent = true
      opts.italic_comments = true
      opts.borderless_telescope = false
    end,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = true,
    },
  },
  {
    "daschw/leaf.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = true,
      contrast = "high",
    },
  },
  { "EdenEast/nightfox.nvim", priority = 1000, lazy = false, opts = { transparent = true } },
}
