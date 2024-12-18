
set -o vi

alias neovim='nvim'

export EDITOR='nvim'

export STARSHIP_CONFIG="$HOME/dotfiles/starship.toml"

export ZELLIJ_CONFIG_DIR="$HOME/dotfiles/zellij"

alias sshprod='ssh travis@165.227.98.136'

alias python='/usr/local/bin/python3.11'

# curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"
