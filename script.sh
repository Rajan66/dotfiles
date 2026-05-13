#!/usr/bin/env bash

set -e

DOTFILES="$HOME/.dotfiles"
CONFIG="$HOME/.config"

mkdir -p "$CONFIG"

ln -sfn "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

ln -sfn "$DOTFILES/bashrc/.bashrc" "$HOME/.bashrc"

ln -sfn "$DOTFILES/bash" "$CONFIG/bash"
ln -sfn "$DOTFILES/nvim" "$CONFIG/nvim"
ln -sfn "$DOTFILES/ghostty" "$CONFIG/ghostty"
ln -sfn "$DOTFILES/fastfetch" "$CONFIG/fastfetch"
ln -sfn "$DOTFILES/btop" "$CONFIG/btop"
ln -sfn "$DOTFILES/starship.toml" "$CONFIG/starship.toml"
