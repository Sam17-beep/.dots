return {
  "hrsh7th/nvim-cmp",
  version = false,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  opts = {
    completion = {
      completeopt = "menu,menuone,noselect",
    },
    mapping = require("cmp").mapping.preset.insert({
      ["<CR>"] = LazyVim.cmp.confirm({ select = false }),
      ["<Tab>"] = LazyVim.cmp.confirm({ select = true }),
    }),
    window = {
      completion = {
        border = {
          { "󱐋", "WarningMsg" },
          { "─", "Comment" },
          { "╮", "Comment" },
          { "│", "Comment" },
          { "╯", "Comment" },
          { "─", "Comment" },
          { "╰", "Comment" },
          { "│", "Comment" },
        },
        scrollbar = false,
        winblend = 0,
      },
      documentation = {
        border = {
          { "󰙎", "DiagnosticHint" },
          { "─", "Comment" },
          { "╮", "Comment" },
          { "│", "Comment" },
          { "╯", "Comment" },
          { "─", "Comment" },
          { "╰", "Comment" },
          { "│", "Comment" },
        },
        scrollbar = false,
        winblend = 0,
      },
    },
  },
}
