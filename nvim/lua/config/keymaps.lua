-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local Util = require("lazyvim.util")

keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
keymap.set("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>", { silent = true })
keymap.set("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>", { silent = true })

-- Borderless terminal
vim.keymap.set("n", "tt", function()
  Util.terminal(nil, { border = "rounded", esc_esc = true })
end, { desc = "Term with border" })

-- Borderless lazygit
vim.keymap.set("n", "<leader>gg", function()
  Util.terminal({ "lazygit" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false, border = "rounded" })
end, { desc = "Lazygit (root dir)" })

keymap.del({ "n", "i", "v" }, "<A-j>")
keymap.del({ "n", "i", "v" }, "<A-k>")
keymap.del("n", "<C-Left>")
keymap.del("n", "<C-Down>")
keymap.del("n", "<C-Up>")
keymap.del("n", "<C-Right>")

local set_keymap = vim.api.nvim_set_keymap

-- Split windows
keymap.set("n", "ss", ":vsplit<Return>", opts)
keymap.set("n", "sv", ":split<Return>", opts)
keymap.set("n", "<S-h>", ":vertical resize +5<Return>", opts)
keymap.set("n", "<S-l>", ":vertical resize -5<Return>", opts)

-- Tabsh key-notation
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- comments
keymap.del("n", "gc")

-- java keymaps
set_keymap("n", "<leader>jj", "<cmd>JavaRunnerRunMain<cr>", { silent = true, noremap = true, desc = "Run Java main" })
set_keymap(
  "n",
  "<leader>jf",
  "<cmd>JavaRunnerToggleLogs<cr>",
  { silent = true, noremap = true, desc = "Toggle Java logs" }
)
set_keymap(
  "n",
  "<leader>js",
  "<cmd>JavaRunnerStopMain<cr>",
  { silent = false, noremap = true, desc = "Stop Java Main" }
)
set_keymap(
  "n",
  "<leader>jt",
  "<cmd>JavaTestRunCurrentClass<cr>",
  { silent = true, noremap = true, desc = "Run Java test" }
)
set_keymap(
  "n",
  "<leader>jr",
  "<cmd>JavaTestViewLastReport<cr>",
  { silent = true, noremap = true, desc = "Show last test report" }
)

-- debug keymaps
set_keymap("n", "<leader>dd", "<cmd>DapNew<cr>", { silent = true, noremap = true, desc = "Start Debug" })
