#!/bin/bash

sudo apt-get install build-essential

sudo apt-get install gtypist

sudo apt-get install chromium-browser

sudo apt-get install autojump

sudo apt-get install coreutils

sudo apt-get install eyed3

sudo apt-get install hexchat

sudo apt-get install mongodb

sudo apt-get install mysql-server

sudo apt-get install python3
sudo apt-get install python3-pip
sudo apt-get install python3-venv
sudo apt-get install flake8

sudo apt-get install ruby

sudo apt-get install shellcheck

sudo apt-get install testdisk

sudo apt-get install toilet
sudo apt-get install toilet-fonts

sudo apt-get install vlc

# Text editors
sudo apt-get install retext
sudo apt-get install vim
    # for-sublime-text
        # installing GPG key
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
        # ensuring apt to with https sources
sudo apt-get install apt-transport-https
        # selecting stable channel
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
        # update and install
sudo apt-get update
sudo apt-get install sublime-text

# DVCS
sudo apt-get install git
sudo apt-get install mercurial

# Final update and upgrade
sudo apt-get update
sudo apt-get upgrade

echo "All packages installed successfully!"
