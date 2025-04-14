#!/bin/bash

echo "=== KeepItTechie Arch Post-Install Setup ==="
read -p "Proceed with system setup? (y/N): " confirm
[[ $confirm != [yY] ]] && echo "Aborted." && exit 1

# Run modules
modules=("01-system.sh" "02-xfce.sh" "03-dotfiles.sh" "04-extras.sh" "05-aur.sh")

for module in "${modules[@]}"; do
    echo -e "\n--- Running $module ---"
    bash "./modules/$module"
done

echo "All modules completed!"
