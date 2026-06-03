# update PATH to include local bin dir
export PATH=$HOME/.local/bin:$PATH 

# history settings
HISTFILE="$XDG_STATE_HOME"/zsh_history
HISTSIZE=10000
SAVEHIST=10000

# put rust libs in better directory
export RUSTUP_HOME=$HOME/.local/lib/rustup
export CARGO_HOME=$HOME/.local/lib/cargo

# wget config path
export WGETRC="$XDG_CONFIG_HOME"/wgetrc

# npm config path
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc

# gnupg key storage
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# mariadb history
export MYSQL_HISTFILE="$XDG_STATE_HOME"/mariadb_history

# set editor as nvim
export EDITOR='/usr/bin/nvim'

