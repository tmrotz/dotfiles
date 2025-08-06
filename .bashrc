
set -o vi

alias neovim='nvim'

export EDITOR='nvim'

export HISTSIZE=10000
export HISTFILESIZE=10000

alias password="tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 12"

mkcd () { mkdir -p "$1" && cd "$1"; }

# curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"

