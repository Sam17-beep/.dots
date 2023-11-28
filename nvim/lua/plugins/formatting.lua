return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require 'conform'

    conform.setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        java = { 'google-java-format' },
        javascript = { 'prettier' },
        ['*'] = { 'codespell' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      vim.keymap.set('n', '<leader>ff', function()
        conform.format {
          lsp_fallback = true,
          async = true,
          timeout_ms = 500,
        }
      end, { desc = '[f]ormat [f]ile' }),
      log_level = vim.log.levels.ERROR,
      notify_on_error = true,
    }
  end,
}
