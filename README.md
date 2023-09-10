# Installation 

This is for Arch or Arch based linux distros

## Installing paru
```sh
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

## Installing packages
```sh
paru -Syu swayfx swaybg waybar xdg-desktop-portal-wlr pipewire pipewire-pulse pipewire-jack wireplumber qt5-wayland qt6-wayland fish kitty starship neovim wofi dunst libnotify pamixer neofetch ttf-firacode-nerd --needed
```

## Copying dotfiles
```sh
git clone https://github.com/khsaad04/dotfiles.git
cd dotfiles
cp -r .config/* ~/.config
cp -r .local/* ~/.local
cd 
chmod +x .local/bin/*
```
