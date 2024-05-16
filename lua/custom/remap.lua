-- Show netrw file explorer
-- However, we got oil.nvim, so disable it for now
-- vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)

vim.keymap.set("n", "<leader>op", ":Copilot enable<CR>")
vim.keymap.set("n", "<leader>oop", ":Copilot disable<CR>")

-- Move highlighted block up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste highlighted text without losing the previous text from clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
