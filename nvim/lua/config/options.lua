-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.conceallevel = 0
opt.cmdheight = 0

opt.termguicolors = true
opt.background = "dark"

vim.g.root_spec = { "cwd" }
vim.g.omni_sql_no_default_maps = 1

vim.lsp.inlay_hints = false

-- turn off swapfile
opt.swapfile = false

vim.g.lazyvim_picker = "telescope"
opt.completeopt = "menu,menuone,noselect"
opt.scrolloff = 8

vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"
