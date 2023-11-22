return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = true,
        always_show = {
          ".gitignore",
        },
      },
      window = {
        position = "right",
      },
    },
  },
}
