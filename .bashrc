
set -o vi

alias neovim='nvim'

export EDITOR='nvim'

export STARSHIP_CONFIG="$HOME/dotfiles/starship.toml"

alias sshprod='ssh travis@165.227.98.136'

alias password="tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 12"

# curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"
