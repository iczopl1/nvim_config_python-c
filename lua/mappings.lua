require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('', '<PageUp>', '<Nop>', { noremap = true, silent = true })
map('', '<PageDown>', '<Nop>', { noremap = true, silent = true })
map('n','<leader>q',':bd<CR>',{desc = "Close current buffor"})
map('n', '<leader>qa', ':bufdo bd<CR>', { desc = "Close all" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
