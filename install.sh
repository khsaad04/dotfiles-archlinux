#!/bin/sh

# Installing necessary packages
paru -Syu hyprland swww waybar-hyprland pamixer grim slurp wofi kitty fish starship cava-git neofetch neovim wl-clipboard dunst libnotify ttf-firacode-nerd catppuccin-gtk-theme-mocha papirus-icon-theme --needed --noconfirm

# Copying over dotfiles
git clone --depth 1 -b hyprland --single-branch https://github.com/khsaad04/dotfiles.git /tmp/khsaad-dotfiles
cp -r /tmp/khsaad-dotfiles/.config/* ~/.config

# Switching default shell to fish
sudo chsh -s /bin/fish
