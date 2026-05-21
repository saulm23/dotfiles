#!/bin/bash
rm -rf ~/.config/*
mkdir -p ~/.config/kitty
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/picom
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status

ln -s -T ~/dotfiles/i3/config ~/.config/i3/config
ln -s -T ~/dotfiles/i3/i3status.conf ~/.config/i3status/config
ln -s -T ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s -T ~/dotfiles/alacritty/alacritty.toml  ~/.config/alacritty/alacritty.toml
ln -s -T ~/dotfiles/kitty/current-theme.conf ~/.config/kitty/current-theme.conf
ln -s -T ~/dotfiles/picom/picom.conf ~/.config/picom/picom.conf

ln -s -T ~/dotfiles/vim ~/.vimrc

echo exec i3 >> ~/.xinitrc
