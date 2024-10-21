#!/bin/bash

sudo pacman -Syu stow

rm -rf ~/.emacs*
rm ~/.vimrc
rm ~/.zshrc
rm ~/.bashrc
rm ~/.ghci
rm ~/.tmux.conf
rm -rf ~/.config/ags
rm -rf ~/.config/cava
rm -rf ~/.config/fastfetch
rm -rf ~/.config/fish
rm -rf ~/.config/htop
rm -rf ~/.config/hypr
rm -rf ~/.config/i3
rm -rf ~/.config/kitty
rm -rf ~/.config/nvim
rm -rf ~/.config/picom
rm -rf ~/.config/polybar
rm -rf ~/.config/waybar

stow .
