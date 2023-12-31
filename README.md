![preview](https://github.com/khsaad04/dotfiles/blob/hyprland/assets/preview.png?raw=true)

# Installation 

This is for Arch or Arch based linux distros. A fresh arch installation without any DE is recommended.

## Installing paru
```sh
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

## Installing packages
```sh
paru -Syu hyprland swww waybar-hyprland pipewire pipewire-pulse pipewire-jack pamixer wireplumber xorg-xwayland xdg-desktop-portal-hyprland qt5-wayland qt6-wayland grim slurp wofi kitty fish starship cava-git neofetch btop bat neovim ripgrep fd unzip npm wl-clipboard dunst libnotify sddm ttf-firacode-nerd noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk catppuccin-gtk-theme-mocha papirus-icon-theme polkit-gnome mesa vulkan-intel firefox --needed
```
## Copying dotfiles
```sh
git clone https://github.com/khsaad04/dotfiles.git
cd dotfiles
git checkout hyprland
cp -r .config/* ~/.config
cp -r .local/* ~/.local
chmod +x ~/.local/bin/*
```

## Change default shell

```sh
chsh -s /bin/fish
```
