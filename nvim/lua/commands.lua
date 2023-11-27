-- Define the autocmd event for BufWritePre (before writing to file)
vim.api.nvim_exec([[
  augroup FormatOnSave
    autocmd!
    autocmd BufWritePre * :Format
  augroup END
]], false)
