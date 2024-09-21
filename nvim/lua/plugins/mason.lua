return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "hadolint",
        "prettierd",
        "shfmt",
        "stylua",
        "selene",
        "shellcheck",
        "sql-formatter",
      },
    },
  },
}
