![preview](https://github.com/khsaad04/dotfiles/blob/hyprland/assets/preview.png?raw=true)

# Installation 

This is for Arch or Arch based linux distros. A fresh arch installation without any DE is recommended.

- ### Dependencies
```sh
hyprland swww waybar-hyprland pamixer wofi kitty fish starship cava-git neofetch dunst libnotify ttf-firacode-nerd catppuccin-gtk-theme-mocha papirus-icon-theme
```

- ### Optional Dependencies
```sh
grip slurp #for taking screenshots
neovim ripgrep fd unzip npm #for my nvim setup
```

#### First we need to install paru the AUR helper:
```sh
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd
```

#### Using curl to run the installation script:
```sh
curl -s https://raw.githubusercontent.com/khsaad04/dotfiles/hyprland/install.sh | sh
```
