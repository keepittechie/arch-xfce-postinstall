# 🧰 KeepItTechie XFCE Dotfiles

Welcome to my personal dotfiles setup built specifically for Arch Linux with the XFCE desktop environment. This repo helps automate the setup and customization of your XFCE experience with a clean, modular structure and includes support for:

- 🔧 Custom XFCE terminal theme
- 🎨 GTK + Icon theme setup
- 🖼 Wallpaper setup with `feh`
- 📊 Conky system monitor configuration
- 🚀 Rofi application launcher config
- 🪟 Picom compositor config
- 🧪 Auto-check/install missing packages (`conky`, `rofi`, `picom`)

---

## 📦 Installation

### 1. Clone the Repo

```bash
git clone https://github.com/KeepItTechie/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Run the Installer

```bash
chmod +x install.sh
./install.sh
```

> 🔐 You may be prompted for `sudo` access to install missing packages.

---

## 🗂 Directory Structure

```
dotfiles/
├── .bashrc
├── .xprofile
├── install.sh
├── xfce4/
│   └── terminal/terminalrc
├── gtk-3.0/settings.ini
├── thunar/accels.scm
├── .config/
│   ├── conky/conky.conf
│   ├── rofi/config.rasi
│   └── picom/picom.conf
└── wallpapers/default.jpg
```

---

## 🧠 Tips

- Add Conky and Picom to XFCE’s session startup to load automatically on login.
- Replace `wallpapers/default.jpg` with your favorite image.
- Use Rofi with a hotkey like `Super + Space` (add it in your XFCE keyboard settings).

---

## 🙌 Credits

Built by [KeepItTechie](https://www.keepittechie.com) to help Linux users build fast, beautiful XFCE environments with ease.

---

## 🪪 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
