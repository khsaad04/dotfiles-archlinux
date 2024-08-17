#!/usr/bin/env bash
# Installing packages
echo "Starting installing packages"
sleep 1

paru -Syu swayfx swaybg hyprland waybar wofi wezterm fish starship dunst libnotify wireplumber ttf-iosevka ttf-nerd-fonts-symbols adw-gtk-theme adwaita-icon-theme grimblast wl-clipboard wl-clip-persist-git --noconfirm --needed && echo "Installing required dependencies complete"
sleep 1

read -p "Do you want to clean your system[DO NOT DO IT IF THE PREVIOUS INSTALLATION FAILED]? (y/n): " yn
case $yn in
    y ) paru -c && paru -Sc --noconfirm;;
    n ) echo "Aight bet";;
    * ) echo "Invalid response";
        exit 1;;
esac
sleep 1

# Copying dotfiles
echo "cloning and copying over dotfiles"
sleep 1

git clone --depth 1 https://github.com/khsaad04/dotfiles-archlinux.git /tmp/khsaad-dotfiles
cp -r /tmp/khsaad-dotfiles/.config/* ~/.config
rm -rf /tmp/khsaad-dotfiles
sleep 1

# Switching default shell to fish
echo "Changing shell"
sleep 1
sudo chsh -s /bin/fish
