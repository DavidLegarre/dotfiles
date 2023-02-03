-- Keybindings
local map = require("utils").map
vim.g.mapleader = " "

-- Splits movement
map("n", "<C-l>", "<C-w>,l")
-- Keybindings for Nerdtree
map("n", "<Leader>tt", "<cmd>NvimTreeToggle<CR>")
map("n", "<Leader>tf", "<cmd>NvimTreeFindFileToggle<CR>")
map("n", "<Leader>tr", "<cmd>NvimTreeRefresh<CR>")
--map("n", "<C-t>", "<cmd>NvimTreeFocus<CR>")

-- Zen-mode
map("n", "<leader>z", "<cmd>ZenMode<cr>")
