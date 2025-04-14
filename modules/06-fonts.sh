#!/bin/bash

read -p "Install fonts and themes (Noto, TTF-MS, Nordic, Bibata)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

packages=(
    noto-fonts noto-fonts-emoji ttf-ms-fonts
    bibata-cursor-theme nordic-darker-theme arc-gtk-theme papirus-icon-theme
)

for pkg in "${packages[@]}"; do
    if ! pacman -Q $pkg &>/dev/null; then
        echo "[+] Installing $pkg..."
        sudo pacman -S --noconfirm $pkg
    else
        echo "[✓] $pkg already installed."
    fi
done
