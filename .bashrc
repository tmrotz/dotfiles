
set -o vi

alias neovim='nvim'

export EDITOR='nvim'

# alias sshprod='ssh travis@165.227.98.136'

alias password="tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 12"

eval "$(starship init bash)"

