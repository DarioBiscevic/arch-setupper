#!/usr/bin/env bash

SCRIPT_EXEC_DIR=$(pwd)

echo $SCRIPT_EXEC_DIR

# setup yay
echo "Installing yay"
cd /tmp
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# update everything
echo "Updating everything"
yay -Syu

# setup zsh w/ oh-my-zsh
echo "Installing zsh w/ oh-my-zsh"
yay -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd $SCRIPT_EXEC_DIR
cp ~/.zshrc ~/.zshrc.old
mv ./zshrc ~/.zshrc
source ~/.zshrc

# setup graphical environment
echo "Installing graphical environment w/ icons"
yay -S gnome 
sudo systemctl enable gdm.service
cd /tmp
git clone https://github.com/vinceliuice/Tela-icon-theme
cd Tela-icon-theme/
./install.sh orange

# install packages
cd $SCRIPT_EXEC_DIR
yay -S $(cat packages-list.txt)