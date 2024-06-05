
set -o vi

alias neovim='nvim'

export EDITOR='nvim'

export STARSHIP_CONFIG="$HOME/dotfiles/starship.toml"

export ZELLIJ_CONFIG_DIR="$HOME/dotfiles/zellij"

# curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"
