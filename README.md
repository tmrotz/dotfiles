# New System Setup

## Steps
### Step 1
```bash
ssh-keygen -t ed25519 -C "tmrotz@gmail.com"
cat ~/.ssh/id_ed25519.pub
```

### Step 2
```bash
git clone git@github.com:qmk/qmk_firmware.git
git clone --recurse-submodules git@github.com:tmrotz/dotfiles.git
cd dotfiles
sudo pacman -S stow ddcutil
mv ~/.config/nvim/ ~/.config/nvim_lazy_bak
rm -rf ~/.local/share/nvim/ ~/.local/state/nvim/ ~/.cache/nvim/
stow --adopt linux
```

#### Omarchy
```bash
stow --adopt omarchy
```

#### Arch
```bash
stow --adopt arch
```

### Step 3
RESTART

## Troubleshooting
- Failed to run `config` for nvim-treesitter
  - Run `Lazy sync`?
