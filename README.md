<div align="center">

# ⚡ Arch Linux Dotfiles

Um setup minimalista, moderno e altamente otimizado focado em produtividade e estética, rodando **Hyprland** no **Arch Linux**.

</div>

---

## 🚀 Stack & Tecnologias
Este ambiente foi construído utilizando as seguintes ferramentas e componentes:

* **Gerenciador de Janelas:** Hyprland (Wayland)
* **Barra de Tarefas:** Waybar
* **Lançador de Aplicativos:** Rofi
* **Terminal:** Kitty
* **Shell:** Zsh com Oh My Zsh & Powerlevel10k
* **Gerenciador de Arquivos:** Nemo
* **Visualização de Áudio:** Cava
* **Outros:** Spicetify (Spotify), Obsidian, VS Code, Krita, Btop, Prism Launcher, Sober (Roblox)

---

## 📦 O que o script automatiza (`install.sh`)
O script de instalação incluído neste repositório realiza as seguintes etapas de forma automatizada:
1. Atualiza o sistema e ativa o `ILoveCandy` no Pacman.
2. Instala o AUR Helper (`yay`).
3. Instala todos os pacotes oficiais e do AUR listados no setup.
4. Configura o Zsh como shell padrão e instala o tema Powerlevel10k.
5. Instala e configura o Spicetify para o Spotify.
6. Copia todas as configurações visuais para o seu `~/.config/` e organiza os wallpapers.

---

## ⚙️ Instalação Rápida

Se quiser testar ou aplicar este setup em uma nova máquina Arch Linux, execute os comandos abaixo no seu terminal:

```bash
# 1. Clone o repositório
git clone [https://github.com/SEU-USUARIO/dotfiles.git](https://github.com/SEU-USUARIO/dotfiles.git)
cd dotfiles

# 2. Dê permissão de execução ao script
chmod +x install.sh

# 3. Execute o instalador
./install.sh
