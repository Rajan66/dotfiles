#!/usr/bin/env bash

# APPEND THE NEW CONFIGS HERE

set -euo pipefail

DOTFILES="$HOME/.dotfiles"
CONFIG="$HOME/.config"

mkdir -p "$DOTFILES"

# top-level configs
mkdir -p "$DOTFILES/tmux"
mkdir -p "$DOTFILES/bashrc"

cp "$HOME/.tmux.conf" "$DOTFILES/tmux/.tmux.conf"
cp "$HOME/.bashrc" "$DOTFILES/bashrc/.bashrc"

# config directories
cp -r "$CONFIG/bash" "$DOTFILES/bash"
cp -r "$CONFIG/nvim" "$DOTFILES/nvim"
cp -r "$CONFIG/ghostty" "$DOTFILES/ghostty"
cp -r "$CONFIG/fastfetch" "$DOTFILES/fastfetch"
cp -r "$CONFIG/btop" "$DOTFILES/btop"

# single config files
cp "$CONFIG/starship.toml" "$DOTFILES/starship.toml"
