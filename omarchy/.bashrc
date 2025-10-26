# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

. "$HOME/.local/share/../bin/env"

set -o vi

export EDITOR='nvim'

export HISTSIZE=10000
export HISTFILESIZE=10000

mkcd() { mkdir -p "$1" && cd "$1"; }

rando() { tr -dc 'A-Za-z0-9!@#$%^&*()' </dev/urandom | head -c ${1%/}; }

function toggle_display {
  CURRENT=$(ddcutil --display 1 getvcp 60 | cut -c 69-70)
  PC="0f"
  LAPTOP="12"

  if [[ "$CURRENT" == "$PC" ]]; then
    echo "Changing to LAPTOP"
    ddcutil --display 1 setvcp 60 "0x"$LAPTOP""
  else
    echo "Changing to PC"
    ddcutil --display 1 setvcp 60 "0x"$PC""
  fi
}
