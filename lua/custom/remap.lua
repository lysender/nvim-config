vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)

-- Move highlighted block up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste highlighted text without losing the previous text from clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
