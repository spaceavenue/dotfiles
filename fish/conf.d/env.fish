set -gx CARGO_HOME "$HOME"/.local/lib/cargo
set -gx RUSTUP_HOME "$HOME"/.local/lib/rustup

set -gx WGETRC "$XDG_CONFIG_HOME/wgetrc"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/npmrc

set -gx GNUPGHOME "$XDG_DATA_HOME"/gnupg

set -gx MYSQL_HISTFILE "$XDG_STATE_HOME"/mariadb_history

set -gx EDITOR "/usr/bin/nvim"
