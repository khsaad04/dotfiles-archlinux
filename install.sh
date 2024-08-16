#!/usr/bin/env bash
# Installing packages
echo "Starting installing packages"
sleep 1

paru -Syu swayfx swaybg hyprland waybar wofi wezterm fish starship dunst libnotify wireplumber ttf-iosevka nerd-fonts-git adw-gtk-theme adwaita-icon-theme grimblast wl-clipboard wl-clip-persist-git wireplumber --noconfirm --needed && echo "Installing required dependencies complete"
sleep 1

echo "Cleaning up"
sleep 1

paru -c && paru -Sc --noconfirm

# Copying dotfiles
echo "cloning and copying over dotfiles"
sleep 1
git clone --depth 1 https://github.com/khsaad04/dotfiles-archlinux.git /tmp/khsaad-dotfiles
cp -r /tmp/khsaad-dotfiles/.config/* ~/.config

# Switching default shell to fish
echo "Changing shell"
sleep 1
sudo chsh -s /bin/fish
