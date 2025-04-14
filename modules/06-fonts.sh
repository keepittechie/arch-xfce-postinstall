#!/bin/bash

read -p "Install fonts (Noto, TTF-MS, Bibata Cursor, modern dark theme)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

sudo pacman -S --noconfirm noto-fonts noto-fonts-emoji ttf-ms-fonts bibata-cursor-theme nordic-darker-theme arc-gtk-theme papirus-icon-theme

echo "[+] Fonts and themes installed!"
