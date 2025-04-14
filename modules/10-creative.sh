#!/bin/bash

read -p "Install creative tools (OBS, GIMP, Kdenlive, Audacity)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

packages=(obs-studio gimp kdenlive audacity handbrake libreoffice-fresh)

for pkg in "${packages[@]}"; do
    if ! pacman -Q $pkg &>/dev/null; then
        echo "[+] Installing $pkg..."
        sudo pacman -S --noconfirm $pkg
    else
        echo "[✓] $pkg already installed."
    fi
done
