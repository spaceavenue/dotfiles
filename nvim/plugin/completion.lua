vim.pack.add({
  { src = "https://github.com/rafamadriz/friendly-snippets" },
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
})

require("blink.cmp").setup({
  -- Mirrors your old nvim-cmp keymaps instead of blink's own "default" preset
  keymap = {
    ["<C-k>"] = { "select_prev", "fallback" },
    ["<C-j>"] = { "select_next", "fallback" },
    ["<C-b>"] = { "scroll_documentation_up", "fallback" },
    ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    ["<C-space>"] = { "show", "fallback" },
    ["<C-e>"] = { "hide", "fallback" },
    ["<CR>"] = { "accept", "fallback" },
  },
  appearance = { nerd_font_variant = "mono" },
  completion = {
    documentation = { auto_show = true },
    -- Replaces the old nvim-autopairs <-> nvim-cmp bridge
    accept = { auto_brackets = { enabled = true } },
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  signature = { enabled = true },
  -- Downloads a prebuilt fuzzy-matcher binary for the pinned release tag;
  -- falls back to a pure-Lua matcher if none is available for your platform.
  fuzzy = { implementation = "prefer_rust_with_warning" },
})

-- Broadcast blink.cmp's extended completion capabilities to every LSP server
-- ('*' is a wildcard applied as a default to every vim.lsp.config(name, ...)).
vim.lsp.config("*", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})
