#!/bin/bash

read -p "Install Flatpak and setup Flathub? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

sudo pacman -S --noconfirm flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "[+] Flatpak and Flathub setup complete!"
