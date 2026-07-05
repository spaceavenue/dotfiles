-- Plugins declared with vim.pack.add() inside plugin/*.lua, sources automatically at startup 
-- (:h runtime-search-path) 
-- LSP servers configured with vim.lsp.config()/vim.lsp.enable(), per-server
-- settings live in lsp/*.lua (auto-discovered, :h lsp-config)

require("user.options")
require("user.keymaps")
require("user.lsp")
