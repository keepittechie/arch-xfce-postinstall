#!/bin/bash

read -p "Install extras (neofetch, conky, rofi, picom, etc)? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

sudo pacman -S --noconfirm neofetch htop curl wget unzip git conky rofi picom
