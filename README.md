# Installation 

This is for Arch or Arch based linux distros. But you can try this on any distro as long as you can suffice the dependencies.

- ##### Dependencies
```sh
hyprland swww waybar-hyprland pamixer wofi foot fish starship dunst libnotify ttf-firacode-nerd catppuccin-gtk-theme-mocha papirus-icon-theme
```

- ##### Optional Dependencies
```sh
grip slurp # For taking screenshots
wl-clipboard # Clipboard daemon
neovim ripgrep fd unzip npm # For my nvim setup
cava neofetch btop bat # Cli utilities
```

#### First we need to install paru the AUR helper:
```sh
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd
```

#### Using curl to run the installation script:
```sh
curl -s -L https://raw.githubusercontent.com/khsaad04/dotfiles/hyprland/install.sh | bash
```
