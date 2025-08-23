#!/bin/bash
set -e

# manually install yay first then run this script
# nếu không có yay thì git clone yay và tự build

if ! command -v yay &> /dev/null; then
    echo "==> Installing yay..."
    mkdir -p ~/app
    cd ~/app
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ~
fi

# Danh sách package cần cài
packages=(
blueman
bluez
bluez-utils
brightnessctl
clipse
cmake
cpio
dunst
fastfetch
fcitx5
fcitx5-configtool
fcitx5-gtk
fcitx5-qt
fcitx5-unikey
fd
ffmpeg
fzf
github-cli
glab
go
grim
gst-plugin-pipewire
htop
hyprland
hyprlock
hyprpicker
hyprsunset
libnotify
libpulse
lua
luarocks
ly
mesa
meson
ninja
noto-fonts-emoji
nvidia-open-dkms
openssh
pipewire
pipewire-alsa
pipewire-jack
pipewire-pulse
polkit-kde-agent
python
qt5-wayland
qt6-wayland
ripgrep
rsync
rustup
seatd
slurp
smartmontools
stow
swww
tmux
ttf-cascadia-mono-nerd
ttf-nerd-fonts-symbols-mono
uwsm
vesktop
waybar
wezterm-git
wireplumber
wl-clipboard
wofi
xdg-desktop-portal-hyprland
xdg-utils
zen-browser-bin
zsh
power-profiles-daemon
)

# Cập nhật hệ thống
echo "==> Updating system..."
yay -Syu --noconfirm

# Cài đặt package
echo "==> Installing packages..."
yay -S --needed --noconfirm "${packages[@]}"

echo "==> Installing Neovim manually..."
cd ~/app
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make clean install

echo "==> Done! 🚀"

