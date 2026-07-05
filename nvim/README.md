# Migration notes

## 1. Requires Neovim 0.12+

Check with `nvim --version`. `vim.pack` and `vim.lsp.enable`/`vim.lsp.config` (as used here) need it.

## 2. Back up and replace your config

```sh
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim/lazy ~/.local/share/nvim/lazy.bak   # old lazy.nvim plugin installs
# copy this folder's contents into ~/.config/nvim
```

Deleting/moving the `lazy` data directory matters — otherwise you'll have the same
plugins installed in two places.

## 3. First launch

Open `nvim`. `vim.pack.add()` will show a confirmation buffer for each new plugin
the first time — press `y` (or `a` to accept all for the session). This clones
catppuccin, nvim-autopairs, blink.cmp, friendly-snippets, lualine, and
nvim-web-devicons.

## 4. Make sure the LSP servers are on your `$PATH`

This config does **not** use Mason — it assumes the servers are already
installed system-wide, per what you mentioned. Verify each one resolves:

```sh
which rust-analyzer clangd vscode-html-language-server \
      vscode-css-language-server typescript-language-server \
      pyright-langserver lua-language-server
```

If any are missing:

| Language     | Binary                          | Typical install                                      |
|--------------|----------------------------------|-------------------------------------------------------|
| Rust         | `rust-analyzer`                 | `rustup component add rust-analyzer`                  |
| C / C++      | `clangd`                        | system package manager (`apt install clangd`, `brew install llvm`, etc.) |
| HTML / CSS   | `vscode-html-language-server`, `vscode-css-language-server` | `npm i -g vscode-langservers-extracted` |
| JS / TS      | `typescript-language-server`    | `npm i -g typescript typescript-language-server`      |
| Python       | `pyright-langserver`            | `pip install pyright` or `npm i -g pyright`           |
| Lua (bonus)  | `lua-language-server`           | package manager, or see luals.github.io               |

Once installed, open a file of that type and run `:checkhealth vim.lsp` to confirm
the client attached.

## 5. What changed vs. the old lazy.nvim config

- **Plugin manager**: `vim.pack` (built into Neovim 0.12) instead of lazy.nvim.
  Each `plugin/*.lua` file is sourced automatically at startup — no bootstrap
  script needed.
- **LSP**: `vim.lsp.config()` / `vim.lsp.enable()` directly, no `nvim-lspconfig`
  plugin and no Mason. Per-server settings live in `lsp/*.lua`.
- **Comments**: dropped `Comment.nvim` — Neovim has had built-in `gcc`/`gc`
  commenting since v0.10, so nothing was lost.
- **Completion**: swapped `nvim-cmp` + `LuaSnip` + `lspkind` for `blink.cmp`,
  which has its own snippet engine and rendering built in. Keymaps in
  `plugin/completion.lua` are set to mirror your old `<C-j>`/`<C-k>`/etc. habits
  rather than blink's own defaults.
- **Autopairs**: kept `nvim-autopairs`, just without the `nvim-cmp` bridge —
  blink.cmp's `completion.accept.auto_brackets` now does that job.
- **Colorscheme**: catppuccin-mocha config carried over unchanged into
  `plugin/00-colorscheme.lua` (the `00-` prefix just makes sure it loads before
  anything else, alphabetically).
- **Dropped, not requested**: `indent-blankline.nvim`, and treesitter
  parser management. Neovim 0.12 highlights common languages out of the box
  without a plugin, and `nvim-treesitter` itself was recently archived
  upstream, so that ecosystem is in flux — worth revisiting separately if you
  want richer highlighting/textobjects later.
- **LSP keymaps**: `gR`/`gd`/`gi`/`gt` used to call out to `:Telescope ...`,
  but Telescope was never actually in your plugin list, so those would have
  errored. They now call the built-in `vim.lsp.buf.*` functions instead.

## 6. Layout

```
~/.config/nvim/
├── init.lua
├── lsp/                  # one file per language server, auto-discovered
├── lua/user/
│   ├── options.lua
│   ├── keymaps.lua
│   └── lsp.lua           # vim.lsp.enable(...) + on-attach keymaps/diagnostics
└── plugin/                # each file = vim.pack.add() + its own setup()
    ├── 00-colorscheme.lua
    ├── autopairs.lua
    ├── completion.lua
    └── statusline.lua
```

To add a plugin later: drop a new file in `plugin/`, call `vim.pack.add({...})`
at the top, configure it below. To update everything: `:lua vim.pack.update()`.
