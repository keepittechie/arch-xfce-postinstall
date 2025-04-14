#!/bin/bash

read -p "Install Flatpak and setup Flathub? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

if ! pacman -Q flatpak &>/dev/null; then
    echo "[+] Installing Flatpak..."
    sudo pacman -S --noconfirm flatpak
else
    echo "[✓] Flatpak already installed."
fi

echo "[+] Adding Flathub if not already present..."
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
