#!/bin/bash

read -p "Install creative software (OBS, GIMP, Kdenlive, Audacity)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

sudo pacman -S --noconfirm obs-studio gimp kdenlive audacity handbrake libreoffice-fresh

echo "[+] Creative tools installed!"
