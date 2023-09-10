# Installation 

![preview](https://github.com/khsaad04/dotfiles/blob/sway/assets/preview.png?raw=true)

This is for Arch or Arch based linux distros. A fresh arch installation without any DE is recommended.

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
git checkout sway
cp -r .config/* ~/.config
cp -r .local/* ~/.local
cd 
chmod +x .local/bin/*
```

## Finishing touches
Disable any desktop managers if you have them since it's not required for this rice. Just login to your user account and sway will be executed automatically by fish. But first we need to set fish as our login shell.

```sh
chsh -s /bin/fish
```
