#!/bin/bash

# Apt packages
apt install -y keepassxc
apt install -y vim
apt install -y git
apt install -y fortune-mod
apt install -y zsh
apt install -y fonts-powerline
apt install -y imagemagick
apt install -y shellcheck
apt install -y simplescreenrecorder
apt install -y python3-pip
apt install -y tree
apt install -y xclip
apt install -y devtodo
apt install -y autojump
apt install -y gnupg2
apt install -y command-not-found
apt install -y mesa-utils
apt install -y radeontop
apt install -y openshot
apt install -y handbrake
apt install -y mlocate
apt install -y libgtk-3-dev
apt install -y gtypist
apt install -y vlc
apt install -y audacity
apt install -y ffmpeg
apt install -y dconf-editor
apt install -y texlive-full  # Size around 2.5 GB
apt install -y pencil2d
apt install -y net-tools
apt install -y pdftk
apt install -y yui-compressor


# Snap Packages
snap install -y --classic heroku
snap install -y --classic sublime-text


# Forked repos
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/themes/powerlevel10k

