-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set
local modes = { "n", "v" }

map(modes, "gl", "g_", { desc = "go to the last word" })
map(modes, "<C-j>", "<C-f>", { desc = "move forword a page" })
map(modes, "<C-k>", "<C-b>", { desc = "move backword a page" })
map(modes, "<C-G>", ":Gen <CR>", { desc = "gen response of models" })
