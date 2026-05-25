#!/bin/bash
#rm -rf ~/.config/*

rm -rf ~/.config/alacritty/*
rm -rf ~/.config/picom/*
rm -rf ~/.config/i3/*
rm -rf ~/.config/i3status/*
rm -rf ~/.config/tmux/*

mkdir -p ~/.config/alacritty
mkdir -p ~/.config/picom
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/tmux
mkdir -p ~/screenshots

ln -s -T ~/dotfiles/i3/config ~/.config/i3/config
ln -s -T ~/dotfiles/i3/i3status.conf ~/.config/i3status/config
ln -s -T ~/dotfiles/alacritty/alacritty.toml  ~/.config/alacritty/alacritty.toml
ln -s -T ~/dotfiles/picom/picom.conf ~/.config/picom/picom.conf
ln -s -T ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf


rm ~/.vimrc
ln -s -T ~/dotfiles/vim ~/.vimrc

rm ~/.bashrc
ln -s -T ~/dotfiles/bash ~/.bashrc
echo exec i3 > ~/.xinitrc
source ~/.bashrc
