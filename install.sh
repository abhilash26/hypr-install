#!/bin/bash

# archinstall
# language : English
# mirrors : India
# locales : 
	# keyboard : us
	# language : en_US
	# encoding : UTF-8
# partitioning : ext4 (Use best)
# disk encryption : none
# bootloader: grub
# swap : true
# hostname : archlinux
# root pass : Set
# user account: 1 sudo : yes
# profile : minimal
# audio : pipewire
# kernels : linux
# additional packages : 
	# terminus-font 
	# git 
	# vim
	# curl
# network: networkmanager
# timezone : Asia/Kolkata 
# automatic time sync (NTP) : true
# optional : none 

# Set terminal font for the current session and persist across reboots
sudo setfont ter-132n
echo "FONT=ter-132n" | sudo tee /etc/vconsole.conf

# Install AUR helper (paru)
mkdir -p "$HOME/.local/src" && cd "$HOME/.local/src"
git clone "https://aur.archlinux.org/paru-bin.git" && cd "paru-bin"
makepkg -si --noconfirm

echo "Paru has been setup!"

# Update system and install essential packages
paru -Syu terminus-font git man-db noto-fonts noto-fonts-emoji libertinus-font ttf-jetbrains-mono-nerd materia-gtk-theme capitaine-cursors papirus-icon-theme pipewire wireplumber pipewire-pulse pavucontrol networkmanager network-manager-applet vim nodejs npm jq eza zoxide bat fd ripgrep fzf aria2 zsh tmux htop yt-dlp starship lazygit mpd ncmpcpp mpv imv imagemagick zathura neovim foot dunst lxsession brightnessctl qt5-wayland qt6-wayland xdg-desktop-portal-hyprland hyprland waybar hyprpaper nwg-look wl-clipboard rofi-wayland slurp grim pcmanfm wget unzip zip wlr-randr devour librewolf-bin brave-bin vscodium-bin --noconfirm

echo "Setup complete!"
