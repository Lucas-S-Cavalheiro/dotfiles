#!/bin/bash

set -e

echo "=== 1. Atualizando o sistema e ativando ILoveCandy no Pacman ==="
sudo pacman -Syu --noconfirm

if ! grep -q "ILoveCandy" /etc/pacman.conf; then
    echo "Adicionando ILoveCandy ao pacman.conf..."
    sudo sed -i '/#VerbosePkgLists/a ILoveCandy' /etc/pacman.conf
fi

echo "=== 2. Instalando ferramentas essenciais e Git ==="
sudo pacman -S --needed --noconfirm git base-devel curl wget zsh

echo "=== 3. Instalando o AUR Helper (yay) ==="
if ! command -v yay &> /dev/null; then
    cd /tmp
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd ~
fi

echo "=== 4. Instalando pacotes oficiais e do AUR ==="
PACOTES_OFICIAIS=(
    "hyprland"
    "waybar"
    "rofi"
    "cava"
    "pavucontrol"
    "nemo"
    "btop"
    "obsidian"
    "krita"
    "obs-studio"
    "steam"
    "prism-launcher"
)

for pkg in "${PACOTES_OFICIAIS[@]}"; do
    sudo pacman -S --needed --noconfirm "$pkg"
done

PACOTES_AUR=(
    "brave-bin"
    "spotify"
    "sober-bin"
    "awww-git"
)

for aur_pkg in "${PACOTES_AUR[@]}"; do
    yay -S --needed --noconfirm "$aur_pkg"
done

echo "=== 5. Instalando o Spicetify ==="
if ! command -v spicetify &> /dev/null; then
    curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
    # Dá permissão para o Spicetify mexer nos ficheiros do Spotify
    sudo chmod a+wr /opt/spotify
    sudo chmod a+wr /opt/spotify/Apps -R
fi

echo "=== 6. Configurando o Zsh e o Powerlevel10k ==="
if [ "$SHELL" != "$(which zsh)" ]; then
    chsh -s "$(which zsh)"
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
fi

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
fi

echo "=== 7. Copiando Dotfiles e Configurações visuais ==="
CONFIG_DIR="$HOME/.config"
mkdir -p "$CONFIG_DIR"

if [ -d "./config" ]; then
    cp -r ./config/* "$CONFIG_DIR/"
fi

# Copia os ficheiros ocultos do Zsh para a pasta raiz do utilizador (~)
if [ -f "./config/zsh/.zshrc" ]; then
    cp ./config/zsh/.zshrc "$HOME/.zshrc"
fi
if [ -f "./config/zsh/.p10k.zsh" ]; then
    cp ./config/zsh/.p10k.zsh "$HOME/.p10k.zsh"
fi

echo "=== 8. Organizando Wallpaper ==="
if [ -d "./wallpapers" ]; then
    mkdir -p "$HOME/Pictures/Wallpapers"
    cp -r ./wallpapers/* "$HOME/Pictures/Wallpapers/"
fi

echo "=== Instalação concluída com sucesso! ==="