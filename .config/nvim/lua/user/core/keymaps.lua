local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

keymap("i", "<C-]>", "gcc", opts)
keymap("v", "<C-]>", "gcc", opts)
keymap("n", "<C-]>", "gcc", opts)

keymap("v", "p", '"_dP', opts)

keymap("n", "<C-u>", ":u<CR>", opts)
