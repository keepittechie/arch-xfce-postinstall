#!/bin/bash

# Only run if user wants to install
read -p "Install XFCE desktop environment and LightDM? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

# Check if XFCE is already installed
if pacman -Q xfce4 &>/dev/null; then
    echo "[✓] XFCE is already installed. Skipping..."
else
    echo "[+] Installing XFCE and desktop essentials..."
    sudo pacman -S --noconfirm \
        xfce4 xfce4-goodies lightdm lightdm-gtk-greeter \
        thunar thunar-archive-plugin file-roller gvfs \
        xfce4-terminal network-manager-applet feh

    echo "[+] Enabling LightDM..."
    sudo systemctl enable lightdm
fi
