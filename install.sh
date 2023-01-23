#!/bin/bash

########
# nvim #
########

mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
ls -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim"

##############
# Xresources #
##############

rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"
