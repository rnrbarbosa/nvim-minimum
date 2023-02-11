vim.g.mapleader = " "

local  map = vim.keymap.set
local opts = { noremap = true }

map("n", "<leader>pv", vim.cmd.Ex, opts)
map("n", "<space>fb", ":Telescope file_browser<CR>", opts)
