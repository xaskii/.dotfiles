#!/usr/bin/env bash
sudo apt update && sudo apt upgrade -y
sudo apt install zip unzip fzf fd-find ripgrep neofetch htop wslu
mkdir -p "$HOME"/.local/bin

# shellcheck disable=SC2046
ln -s $(which fdfind) "$HOME/.local/bin/fd"
