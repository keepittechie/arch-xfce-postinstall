#!/bin/bash

read -p "Install extras (neofetch, conky, rofi, picom, etc)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

packages=(neofetch htop curl wget unzip git conky rofi picom)
for pkg in "${packages[@]}"; do
    if ! pacman -Q $pkg &>/dev/null; then
        echo "[+] Installing $pkg..."
        sudo pacman -S --noconfirm $pkg
    else
        echo "[✓] $pkg already installed."
    fi
done
