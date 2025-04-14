#!/bin/bash
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Linking dotfiles from $DOTFILES_DIR"

mkdir -p ~/.config/xfce4/terminal ~/.config/gtk-3.0 ~/.config/wallpapers ~/.config/Thunar
mkdir -p ~/.config/conky ~/.config/rofi ~/.config/picom

ln -sf "$DOTFILES_DIR/.bashrc" ~/.bashrc
ln -sf "$DOTFILES_DIR/.xprofile" ~/.xprofile
ln -sf "$DOTFILES_DIR/xfce4/terminal/terminalrc" ~/.config/xfce4/terminal/terminalrc
ln -sf "$DOTFILES_DIR/gtk-3.0/settings.ini" ~/.config/gtk-3.0/settings.ini
ln -sf "$DOTFILES_DIR/thunar/accels.scm" ~/.config/Thunar/accels.scm
ln -sf "$DOTFILES_DIR/wallpapers/default.jpg" ~/.config/wallpapers/default.jpg
ln -sf "$DOTFILES_DIR/.config/conky/conky.conf" ~/.config/conky/conky.conf
ln -sf "$DOTFILES_DIR/.config/rofi/config.rasi" ~/.config/rofi/config.rasi
ln -sf "$DOTFILES_DIR/.config/picom/picom.conf" ~/.config/picom/picom.conf

# === XFCE Theme + Appearance ===
xfconf-query -c xsettings -p /Net/ThemeName -s "Nordic-darker"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
xfconf-query -c xsettings -p /Net/CursorThemeName -s "Bibata-Modern-Classic"
xfconf-query -c xfwm4 -p /general/theme -s "Nordic-darker"
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s "$HOME/.config/wallpapers/default.jpg"
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-style -s 3

echo "Dotfiles linked and theme applied!"
