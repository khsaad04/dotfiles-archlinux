#!/bin/sh

# Installing necessary packages
paru -Syu hyprland swww waybar-hyprland pipewire pipewire-pulse pipewire-jack pamixer wireplumber xorg-xwayland xdg-desktop-portal-hyprland qt5-wayland qt6-wayland grim slurp wofi kitty fish starship cava-git neofetch btop bat neovim ripgrep fd unzip npm wl-clipboard dunst libnotify sddm ttf-firacode-nerd noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk catppuccin-gtk-theme-mocha papirus-icon-theme polkit-gnome firefox --needed --noconfirm

# Copying over dotfiles
git clone --depth 1 -b hyprland --single-branch https://github.com/khsaad04/dotfiles.git khsaad-dotfiles

if [ ! -d ".config" ]; then
  mkdir .config
fi

cp -r khsaad-dotfiles/.config/* ~/.config
cp -r khsaad-dotfiles/.local/* ~/.local

# Switching default shell to fish
sudo chsh -s /bin/fish
