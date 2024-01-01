-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw" })

-- moving lines up and down in visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Reflow text (without moving cursor)" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump half a line down (centered screen)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump half a line up (centered screen)" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Jump to next search result (centered screen)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Jump to previous search result (centered screen)" })

-- save haha
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { silent = true, desc = "Save buffer" })

-- next greatest remap ever : asbjornHaland
-- copying to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+y$]], { desc = "Yank until end of line to clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to clipboard" })
