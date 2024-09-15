# Installation 

This is for Arch or Arch based linux distros. But you can try this on any distro as long as you can suffice the dependencies.

- ##### Dependencies
```sh
hyprland swaybg waybar wofi kitty fish starship dunst libnotify wireplumber ttf-iosevka ttf-nerd-fonts-symbols adw-gtk-theme adwaita-icon-theme
```

- ##### Optional Dependencies
```sh
neovim tree-sitter ripgrep fd unzip npm gcc make lua-jsregexp # For my nvim setup
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
curl -s -L https://raw.githubusercontent.com/khsaad04/dotfiles-archlinux/main/install.sh | bash
```
