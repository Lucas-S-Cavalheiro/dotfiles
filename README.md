# ⚙️ My Dotfiles - Arch Linux & Hyprland

![Status](https://img.shields.io/badge/Status-Ativo-brightgreen)
![Tecnologias](https://img.shields.io/badge/Tecnologias-Arch_Linux%20%7C%20Hyprland%20%7C%20Lua-blue)
![Ambiente](https://img.shields.io/badge/Ambiente-Desktop%20Local-orange)

## 📌 Sobre o Repositório

Este repositório armazena os meus ficheiros de configuração pessoais (*dotfiles*) para o meu ambiente de trabalho Linux. O setup foi desenhado com foco absoluto em performance, produtividade por atalhos de teclado e uma estética moderna.

A base do sistema roda sobre o **Arch Linux**, utilizando o **Hyprland** como compositor Wayland principal, com diversas customizações feitas em Lua e Bash para otimizar o fluxo de trabalho.

## 🎯 Componentes Customizados

* **Hyprland:** Window Manager dinâmico. Configurações completas de atalhos (*keybinds*), regras de janelas (*window rules*), gaps e animações fluidas.
* **Waybar:** Barra de status minimalista e funcional, exibindo informações cruciais do sistema e workspaces.
* **SwayNC:** Central de notificações elegante e integrada ao design geral do sistema.
* **Scripts (Lua/Bash):** Automações e ajustes finos para garantir que os componentes do desktop comuniquem entre si de forma perfeita.

## 🛠️ Tecnologias e Ferramentas

* **Sistema Operacional:** Arch Linux
* **Servidor Gráfico:** Wayland
* **Compositor / WM:** Hyprland
* **Linguagens de Configuração:** Lua, Bash, JSON, CSS

## 💻 Como utilizar na sua máquina

> ⚠️ **Aviso Importante:** *Dotfiles* são configurações extremamente pessoais. Recomendo fortemente que leia os ficheiros e entenda o que cada linha faz antes de os aplicar no seu sistema. **Faça sempre backup das suas configurações atuais.**

**1. Faça o clone do repositório:**
Abra o seu terminal e execute:
`git clone https://github.com/Lucas-S-Cavalheiro/dotfiles.git`

**2. Faça backup das suas configurações atuais:**
Caso já tenha ficheiros do Hyprland ou Waybar, guarde-os numa pasta segura:
`mv ~/.config/hypr ~/.config/hypr_backup`

**3. Mova os ficheiros para o diretório correto:**
Copie as pastas desejadas deste repositório para o seu diretório de configurações ocultas:
`cp -r dotfiles/hypr ~/.config/`
`cp -r dotfiles/waybar ~/.config/`

**4. Recarregue o ambiente:**
Dependendo da ferramenta, basta guardar o ficheiro ou utilizar o atalho do Hyprland para recarregar as configurações instantaneamente.

---
Desenvolvido por **Lucas da Silva Cavalheiro** (Lucky)
