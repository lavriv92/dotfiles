source ~/.config/fish/aliases.fish


# variables
set -gx EDITOR nvim
set -x LC_ALL en_US.UTF-8
set -x TERM xterm-256color

export PATH="$PATH:$HOME/.cargo/bin"

export RUST_SRC_PATH=/usr/local/src/rustc/src

export DENO_INSTALL="/Users/ilavriv/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


