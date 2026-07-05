vim.pack.add({
	{ src = "https://github.com/nvim-neo-tree/neo-tree.nvim.git" },
	{ src = "https://github.com/nvim-lua/plenary.nvim.git" },
	{ src = "https://github.com/MunifTanjim/nui.nvim.git" },
})

require("neo-tree").setup({
  window = {
    position = "left",
    width = 30,
  },
  filesystem = {
    filtered_items = {
      visible = true, -- Shows hidden files (like .gitignore) by default
    },
    follow_current_file = {
      enabled = true, -- Auto-focuses the file you are currently editing in the tree
    },
  },
})

-- Keymap to toggle like VSCode's sidebar
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { silent = true })
