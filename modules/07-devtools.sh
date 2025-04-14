#!/bin/bash

read -p "Install development tools and essentials? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

sudo pacman -S --noconfirm base-devel git gcc make cmake python python-pip python-requests python-bs4 fzf fd vim nano zip unzip docker cronie jq htop neofetch

echo "[+] Developer tools and system utilities installed!"
