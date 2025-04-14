#!/bin/bash

read -p "Clone and apply KeepItTechie dotfiles? (y/N): " confirm
[[ $confirm != [yY] ]] && exit 0

cd ./dotfiles
bash install.sh
