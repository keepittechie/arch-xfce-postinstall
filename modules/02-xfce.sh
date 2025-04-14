#!/bin/bash

read -p "Install XFCE desktop environment and LightDM? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

echo "[+] Installing XFCE and desktop essentials..."
sudo pacman -S --noconfirm xfce4 xfce4-goodies lightdm lightdm-gtk-greeter thunar thunar-archive-plugin file-roller gvfs xfce4-terminal network-manager-applet feh

echo "[+] Enabling LightDM..."
sudo systemctl enable lightdm
