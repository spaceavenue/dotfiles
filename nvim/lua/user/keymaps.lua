local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- increase and decrease indent
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- undo
keymap("n", "<C-u>", ":u<CR>", opts)

-- delete words backwards in insert mode
vim.keymap.set('i', '<C-BS>', '<C-w>', opts)
vim.keymap.set('i', '<C-H>', '<C-w>', opts)

-- delete words forwards in insert mode
vim.keymap.set('i', '<C-Delete>', '<C-o>dw', opts)

-- switch window focus
vim.keymap.set('n', '<S-h>', '<C-w>h', opts)
vim.keymap.set('n', '<S-j>', '<C-w>j', opts)
vim.keymap.set('n', '<S-k>', '<C-w>k', opts)
vim.keymap.set('n', '<S-l>', '<C-w>l', opts)

vim.keymap.set('n', '<C-Left>',  '<C-w>h', opts)
vim.keymap.set('n', '<C-Right>', '<C-w>l', opts)
vim.keymap.set('n', '<C-Down>',  '<C-w>j', opts)
vim.keymap.set('n', '<C-Up>',    '<C-w>k', opts)

-- insert fish function boilerplate
vim.keymap.set("i", "<C-f>", function()
  vim.snippet.expand([[
function ${1:func_name} --description '${2}'
    $0
end
funcsave $1
]])
end, { desc = "Fish function template" })
