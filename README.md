![preview](https://github.com/khsaad04/dotfiles/blob/sway/assets/preview.png?raw=true)

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
paru -Syu swayfx swaybg waybar pipewire pipewire-pulse pipewire-jack wireplumber xdg-desktop-portal-wlr qt5-wayland qt6-wayland fish kitty starship neovim ripgrep fd wofi dunst libnotify pamixer grim slurp sddm neofetch ttf-firacode-nerd --needed
```

## Copying dotfiles
```sh
git clone https://github.com/khsaad04/dotfiles.git
cd dotfiles
git checkout sway
cp -r .config/* ~/.config
cp -r .local/* ~/.local
chmod +x ~/.local/bin/*
```

## Change default shell

```sh
chsh -s /bin/fish
```
