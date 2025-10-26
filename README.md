# New System Setup

ssh-keygen -t ed25519 -C "tmrotz@gmail.com"
cat ~/.ssh/id_ed25519.pub
git clone git@github.com:qmk/qmk_firmware.git
git clone --recurse-submodules git@github.com:tmrotz/dotfiles.git
cd dotfiles
sudo pacman -S stow
stow --adopt

