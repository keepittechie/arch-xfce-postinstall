#!/bin/bash

read -p "Install gaming tools (Steam, Lutris, Wine, etc)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

sudo pacman -S --noconfirm steam lutris wine wine-gecko wine-mono winetricks gamemode mangohud

echo "[+] Gaming tools installed!"
