#!/bin/bash

# Installing packages
echo "Starting installing packages"
sleep 1
paru -Syu hyprland swww waybar-hyprland pamixer wofi kitty fish starship dunst libnotify ttf-firacode-nerd catppuccin-gtk-theme-mocha papirus-icon-theme --needed --noconfirm && echo "installing packages complete"
sleep 1

# Copying dotfiles
echo "cloning and copying over dotfiles"
sleep 1
git clone --depth 1 -b hyprland --single-branch https://github.com/khsaad04/dotfiles.git /tmp/khsaad-dotfiles
cp -r /tmp/khsaad-dotfiles/.config/* ~/.config

# Switching default shell to fish
echo "Changing shell"
sleep 1
sudo chsh -s /bin/fish
