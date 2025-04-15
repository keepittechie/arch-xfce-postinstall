#!/bin/bash

echo "=== 🧰 KeepItTechie Arch Post-Install Setup ==="

echo "Choose a profile to install:"
echo "1) Basic - System, XFCE, Dotfiles, Fonts, Extras"
echo "2) Developer - Basic + Dev Tools + Flatpak"
echo "3) Gaming - Basic + Gaming + Creative Tools"
read -p "Enter selection [1-3]: " profile

case $profile in
  1)
    modules=("01-system.sh" "02-xfce.sh" "03-dotfiles.sh" "04-extras.sh" "05-aur.sh" "06-fonts.sh")
    ;;
  2)
    modules=("01-system.sh" "02-xfce.sh" "03-dotfiles.sh" "04-extras.sh" "05-aur.sh" "06-fonts.sh" "07-devtools.sh" "08-flatpak.sh")
    ;;
  3)
    modules=("01-system.sh" "02-xfce.sh" "03-dotfiles.sh" "04-extras.sh" "05-aur.sh" "06-fonts.sh" "09-gaming.sh" "10-creative.sh")
    ;;
  *)
    echo "❌ Invalid selection. Aborting."
    exit 1
    ;;
esac

for module in "${modules[@]}"; do
    echo -e "\n--- 🛠 Running $module ---"
    bash "./modules/$module"
done

echo -e "\n[+] Enabling autostart for Conky and Picom..."
mkdir -p ~/.config/autostart
cp ./autostart/*.desktop ~/.config/autostart/

echo -e "\n✅ Profile installation complete! Reboot recommended."
