#!/bin/sh

# Installing paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd

# Installing necessary packages
paru -Syu hyprland swww waybar-hyprland pipewire pipewire-pulse pipewire-jack pamixer wireplumber xorg-xwayland xdg-desktop-portal-hyprland qt5-wayland qt6-wayland grim slurp wofi kitty fish starship cava-git neofetch btop bat neovim ripgrep fd unzip npm wl-clipboard dunst libnotify sddm ttf-firacode-nerd noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk catppuccin-gtk-theme-mocha papirus-icon-theme polkit-gnome mesa vulkan-intel firefox --needed

# Copying over dotfiles
git clone --depth 1 -b hyprland --single-branch https://github.com/khsaad04/dotfiles.git
cp -r dotfiles/.config/* ~/.config
cp -r dotfiles/.local/* ~/.local

# Switching default shell to fish
chsh -s /bin/fish
