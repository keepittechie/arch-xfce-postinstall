#!/bin/bash

echo "=== KeepItTechie Arch Post-Install Setup ==="

read -p "Proceed with system setup? (y/N): " confirm
[[ $confirm != [yY] ]] && echo "Aborted." && exit 1

# List of modules to run
modules=(
  "01-system.sh"
  "02-xfce.sh"
  "03-dotfiles.sh"
  "04-extras.sh"
  "05-aur.sh"
  "06-fonts.sh"
  "07-devtools.sh"
  "08-flatpak.sh"
  "09-gaming.sh"
  "10-creative.sh"
)

# Loop through and run each module
for module in "${modules[@]}"; do
    echo -e "\\n--- 🛠 Running $module ---"
    bash "./modules/$module"
done

# Copy autostart files for conky and picom
echo -e "\\n[+] Enabling autostart for Conky and Picom..."
mkdir -p ~/.config/autostart
cp ./autostart/*.desktop ~/.config/autostart/

echo -e "\\n✅ All modules completed! Reboot recommended."
