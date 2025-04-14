#!/bin/bash

read -p "Update system and enable multilib? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

echo "[+] Updating system..."
sudo pacman -Syu --noconfirm

echo "[+] Enabling parallel downloads..."
sudo sed -i 's/^#ParallelDownloads/ParallelDownloads/' /etc/pacman.conf

echo "[+] Enabling NetworkManager..."
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
