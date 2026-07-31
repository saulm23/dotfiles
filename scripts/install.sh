#!/bin/bash

rm -rf ~/.config/alacritty/*
rm -rf ~/.config/picom/*
rm -rf ~/.config/i3/*
rm -rf ~/.config/i3status/*
rm -rf ~/.config/nvim/*
rm -rf ~/.config/kitty/*

mkdir -p ~/.config/alacritty
mkdir -p ~/.config/picom
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/nvim
mkdir -p ~/.config/kitty
mkdir -p ~/screenshots

ln -s -T ~/d/i3/config ~/.config/i3/config
ln -s -T ~/d/i3/i3status.conf ~/.config/i3status/config
ln -s -T ~/d/kitty/kitty.conf  ~/.config/kitty/kitty.conf
ln -s -T ~/d/alacritty/alacritty.toml  ~/.config/alacritty/alacritty.toml
ln -s -T ~/d/picom/picom.conf ~/.config/picom/picom.conf
ln -s -T ~/d/nvim/init.lua ~/.config/nvim/init.lua

rm ~/.vimrc
ln -s -T ~/d/vim ~/.vimrc

rm ~/.bashrc
ln -s -T ~/d/bash ~/.bashrc

echo exec i3 > ~/.xinitrc

source ~/.bashrc
