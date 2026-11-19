-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Create vertical split window
vim.keymap.set("n", "<leader>vv", ":vsplit<CR>")

-- Create horizontal split window
vim.keymap.set("n", "<leader>hh", ":split<CR>")

-- Open terminal in a vertical split window
vim.keymap.set("n", "<leader>tt", ":vsplit<CR>:term<CR>")

-- Open terminal in a horizontal split window
vim.keymap.set("n", "<leader>st", ":split<CR>:term<CR>")

vim.keymap.set("n", "<leader>op", ":Copilot enable<CR>")
vim.keymap.set("n", "<leader>oop", ":Copilot disable<CR>")

-- Move highlighted block up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste highlighted text without losing the previous text from clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
