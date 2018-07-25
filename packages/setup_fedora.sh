#!/bin/bash

sudo dnf install build-essential

sudo dnf install gtypist

sudo dnf install chromium-browser

sudo dnf install autojump

sudo dnf install coreutils

sudo dnf install eyed3

sudo dnf install hexchat

sudo dnf install mongodb

sudo dnf install mysql-server

#python
sudo dnf install python3
sudo dnf install python3-pip
sudo dnf install python3-venv
sudo dnf install flake8
sudo dnf install pip

sudo dnf install ruby

sudo dnf install shellcheck

sudo dnf install testdisk

sudo dnf install toilet
sudo dnf install toilet-fonts

sudo dnf install vlc

# Text editors
sudo dnf install retext

sudo dnf install vim

# for-sublime-text
        # installing GPG key
rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
        # selecting stable channel
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
        # update and install
sudo dnf update
sudo dnf install sublime-text

sudo dnf install emacs24

# DVCS
sudo dnf install git
sudo dnf install mercurial

# zsh and powerline
sudo dnf install zsh
sudo dnf install powerline
sudo dnf fonts-powerline

# Final update and upgrade
sudo dnf update
sudo dnf upgrade

echo "All packages installed successfully!"
