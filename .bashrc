
set -o vi

export EDITOR='nvim'

export BROWSER=google-chrome

export STARSHIP_CONFIG=~/dotfiles/starship.toml

export ZELLIJ_CONFIG_DIR=~/dotfiles/zellij

export PATH="$HOME/code/zig/zig-linux-x86_64-0.13.0-dev.211+6a65561e3:$PATH"

export PATH="$HOME/nvim-linux64/bin:$PATH"

# curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"

