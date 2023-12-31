-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("i", "kj", "<Esc>", {})

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- swap two lines when in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set({ "n", "v" }, "<leader>y", '"*y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"*p')

-- fun stuff
vim.keymap.set("n", "<leader>fm", "<cmd>CellularAutomaton make_it_rain<CR>")
