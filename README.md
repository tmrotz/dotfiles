# New System Setup

## Step 1
ssh-keygen -t ed25519 -C "tmrotz@gmail.com"
cat ~/.ssh/id_ed25519.pub

## Step 2
git clone git@github.com:qmk/qmk_firmware.git
git clone --recurse-submodules git@github.com:tmrotz/dotfiles.git
cd dotfiles
sudo pacman -S stow
mv ~/.config/nvim/ ~/.config/nvim_lazy_bak
rm -rf ~/.local/share/nvim/ ~/.local/state/nvim/ ~/.cache/nvim/
stow --adopt linux

### Omarchy
stow --adopt omarchy

### Arch
stow --adopt arch

