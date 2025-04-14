#!/bin/bash

read -p "Install gaming tools (Steam, Lutris, Wine, etc)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

packages=(steam lutris wine wine-gecko wine-mono winetricks gamemode mangohud)

for pkg in "${packages[@]}"; do
    if ! pacman -Q $pkg &>/dev/null; then
        echo "[+] Installing $pkg..."
        sudo pacman -S --noconfirm $pkg
    else
        echo "[✓] $pkg already installed."
    fi
done
