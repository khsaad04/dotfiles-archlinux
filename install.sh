#!/usr/bin/env bash

set -xe

dependencies="hyprland swaybg waybar matugen-bin wofi kitty fish starship dunst libnotify wireplumber ttf-iosevka ttf-nerd-fonts-symbols adw-gtk-theme adwaita-icon-theme grimblast wl-clipboard"

paru -Syu $dependencies --noconfirm --needed
sleep 1

rm -rf /tmp/khsaad-dotfiles || true
sleep 1
git clone --depth 1 https://github.com/khsaad04/dotfiles-archlinux.git /tmp/khsaad-dotfiles
cp -r /tmp/khsaad-dotfiles/.config/* ~/.config
sleep 1

chsh -s $(which fish)
