-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("i", "jk", "<Esc>", opts)

-- in normal mode, Enter key breaks the line at cursor
vim.api.nvim_set_keymap("n", "<CR>", "i<CR><Esc>", opts)
