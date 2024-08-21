#!/usr/bin/env bash

set -xe

paru -Syu swayfx swaybg hyprland waybar wofi wezterm fish starship dunst libnotify wireplumber ttf-iosevka ttf-nerd-fonts-symbols adw-gtk-theme adwaita-icon-theme grimblast wl-clipboard wl-clip-persist-git --noconfirm --needed
sleep 1

rm -rf /tmp/khsaad-dotfiles;git clone --depth 1 https://github.com/khsaad04/dotfiles-archlinux.git /tmp/khsaad-dotfiles
cp -r /tmp/khsaad-dotfiles/.config/* ~/.config
sleep 1

sudo chsh -s /bin/fish
