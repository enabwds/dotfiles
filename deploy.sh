#!/bin/bash

sudo pacman -Syu --needed stow emacs vim zsh bash ghci tmux ags cava fastfetch fish htop hyprland i3 kitty picom polybar waybar nushell hyprpaper


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
rm -rf ~/.config/nushell

stow .
