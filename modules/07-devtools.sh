#!/bin/bash

read -p "Install development tools and system utilities? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

packages=(base-devel git gcc make cmake python python-pip python-requests python-bs4 fzf fd vim nano zip unzip docker cronie jq htop neofetch)

for pkg in "${packages[@]}"; do
    if ! pacman -Q $pkg &>/dev/null; then
        echo "[+] Installing $pkg..."
        sudo pacman -S --noconfirm $pkg
    else
        echo "[✓] $pkg already installed."
    fi
done
