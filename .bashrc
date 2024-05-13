
set -o vi

export EDITOR='nvim'

export BROWSER=google-chrome

export PATH="$HOME/zig-linux-x86_64-0.12.0:$PATH"

# curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"

