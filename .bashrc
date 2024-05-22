
set -o vi

alias neovim='nvim'

export EDITOR='nvim'

export BROWSER=google-chrome

export STARSHIP_CONFIG="$HOME/dotfiles/starship.toml"

export ZELLIJ_CONFIG_DIR="$HOME/dotfiles/zellij"

export PATH="$HOME/code/zig/zig-linux-x86_64-0.13.0-dev:$PATH"

export PATH="$HOME/nvim-linux64/bin:$PATH"

export PATH="$HOME/zellij:$PATH"

# curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"

