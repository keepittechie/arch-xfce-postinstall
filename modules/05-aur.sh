#!/bin/bash

read -p "Install AUR helper (yay)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

if ! command -v yay &>/dev/null; then
    echo "[+] Installing yay (AUR helper)..."
    sudo pacman -S --needed --noconfirm base-devel git
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
else
    echo "[+] yay is already installed."
fi
