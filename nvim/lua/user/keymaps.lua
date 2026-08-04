local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

keymap("v", "p", '"_dP', opts)

keymap("n", "<C-u>", ":u<CR>", opts)

vim.keymap.set('i', '<C-BS>', '<C-w>', opts)
vim.keymap.set('i', '<C-H>', '<C-w>', opts)

vim.keymap.set('i', '<C-Delete>', '<C-o>dw', opts)

vim.keymap.set("i", "<C-f>", function()
  vim.snippet.expand([[
function ${1:func_name} --description '${2}'
    $0
end
funcsave $1
]])
end, { desc = "Fish function template" })
