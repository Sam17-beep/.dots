return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      function _G.set_terminal_keymaps()
        local opts = { noremap = true }
        vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
      end

      vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")

      require("toggleterm").setup({
        shade_terminals = false,
        start_in_insert = true,
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        -- persist_size = true,
        close_on_exit = true, -- close the terminal window when the process exits
        shell = vim.o.shell, -- change the default shell
        -- This field is only relevant if direction is set to 'float'
        float_opts = {
          border = "curved", -- single/double/shadow/curved
          -- width = math.floor(0.7 * vim.fn.winwidth(0)),
          -- height = math.floor(0.8 * vim.fn.winheight(0)),
          winblend = 4,
        },
        winbar = {
          enabled = true,
        },
      })
    end,
    keys = {
      { "<Leader>t", "<cmd>ToggleTerm direction=float<CR>", desc = "terminal float" },
    },
  },
}
