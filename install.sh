#!/bin/bash

# Installing packages
echo "Starting installing packages"
sleep 1
paru -Syu hyprland swww waybar-hyprland pamixer wofi foot fish starship dunst libnotify ttf-firacode-nerd catppuccin-gtk-theme-mocha papirus-icon-theme --noconfirm --needed && echo "Installing required dependencies complete"
sleep 1

read -p "Do you want to install all the optional dependencies? (y/n): " yn

case $yn in
    y ) paru -Syu grip slurp wl-clipboard neovim ripgrep fd unzip npm cava neofetch btop bat --noconfirm --needed;;
    n ) echo "Aight bet";;
    * ) echo "Invalid response";
        exit 1;;
esac

sleep 1
echo "Cleaning up"
sleep 1

paru -c && paru -Sc --noconfirm

# Copying dotfiles
echo "cloning and copying over dotfiles"
sleep 1
git clone --depth 1 -b hyprland --single-branch https://github.com/khsaad04/dotfiles.git /tmp/khsaad-dotfiles
cp -r /tmp/khsaad-dotfiles/.config/* ~/.config

# Switching default shell to fish
echo "Changing shell"
sleep 1
sudo chsh -s /bin/fish
