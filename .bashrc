
set -o vi

alias neovim='nvim'

export EDITOR='nvim'

export HISTSIZE=10000
export HISTFILESIZE=10000

alias password="tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 12"

mkcd () { mkdir -p "$1" && cd "$1"; }

fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Packages:Shell:Display:DE:WM:WMTheme:Theme:Icons:Font:Cursor:Terminal:TerminalFont:CPU:GPU:Memory:Swap:Disk:LocalIp:Battery:PowerAdapter:Locale:Bluetooth:Break:Colors


function toggle_display {
    CURRENT=`ddcutil --display 1 getvcp 60 | cut -c 69-70`
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

# curl -sS https://starship.rs/install.sh | sh
#
eval "$(starship init bash)"

