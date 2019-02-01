#!/usr/bin/env bash

echo "Beginning with Ubuntu setup. Have a walk while the machine is setup"

# Tested on Ubuntu 18.04 (Bionic Beaver)

# Update and upgrade the already present packages
sudo apt -y update
sudo apt -y upgrade


################################################################################
#                              Basic packages                                  #
################################################################################

# Install zsh
sudo apt -y install zsh

# Install everything else
sudo apt -y install tree
sudo apt -y install ack
sudo apt -y install git git-extras git-ftp git-crypt  # hub not available for Linux (ubuntu)
sudo apt -y install curl
sudo apt -y install htop ngrep nmap
sudo apt -y install autojump # A smart command to change directory (https://github.com/wting/autojump)
pip install legit            # http://www.git-legit.org/
legit --install
sudo apt -y install zopfli   # Data compression software (https://github.com/google/zopfli)
sudo apt -y install cowsay
# pup not available for ubuntu
sudo apt -y install sshrc    # https://github.com/Russell91/sshrc
# sshrc not available for ubuntu
sudo apt -y install httpie   # https://github.com/jakubroztocil/httpie
sudo apt -y install jq       # https://stedolan.github.io/jq/
sudo apt -y install elixir
sudo apt -y install shellcheck
# teamviewer not available for ubuntu


###############################################################################
#                                utilities                                    #
###############################################################################

sudo apt -y install firefox
sudo apt -y install dash
sudo apt -y install nixnote2  # Open Source Evernote Client
# skitch not available for ubuntu
# android-file-transfer-linux http://whoozle.github.io/android-file-transfer-linux/
sudo apt -y install chromium-browser # open source alternative of Google Chrome
sudo apt -y install hexchat   # open source alternative of limechat
# nautilus-dropbox # dropbox integration for nautilus
sudo apt -y install vlc
# nvalt alternative nvpy for notes https://github.com/cpbotha/nvpy
curl -O https://prerelease.keybase.io/keybase_amd64.deb  # Ubuntu, Debian: 64-bit [s/amd64/i386 - for 32-bit]
# if you see an error about missing `libappindicator1`
# from the next command, you can ignore it, as the
# subsequent command corrects it
sudo dpkg -i keybase_amd64.deb
sudo apt -y install -f


################################################################################
#                               Data Stores                                    #
################################################################################

sudo apt -y install mysql-server
# sudo apt -y install mongodb # unable to install mongodb-server
sudo apt -y install redis
# elasticsearch-curator # command-line tool for managing Elasticsearch time-series indices

# Postgres Database
sudo apt -y install postgresql-10 # object-relational SQL database, version 10 server
sudo apt -y install postgresql
sudo apt -y install pgadmin3
sudo apt -y install rubygems
# rubygems-integration # integration of Debian Ruby packages with Rubygems

# sudo gem install pg # unable to install

# PG tools
# osgeo needs epel
sudo apt -y install postgis


################################################################################
#                               Dev tools                                      #
################################################################################

sudo apt -y install virtualbox
sudo apt -y install vagrant
# install postman with snap http://ubuntuhandbook.org/index.php/2018/09/install-postman-app-easily-via-snap-in-ubuntu-18-04/
sudo apt -y install snapd
sudo snap install postman
sudo apt -y install weechat
sudo apt -y install tmux

# front-end stuff
sudo apt -y install npm
npm i -g postcss-cli
npm i -g autoprefixer

# custom stuff
# Telegram
sudo apt -y install telegram-desktop


################################################################################
#                         Installing some binaries                             #
################################################################################

# Heroku standalone installer
wget https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-linux-x86.tar.gz -O heroku.tar.gz
tar -xvzf heroku.tar.gz
mkdir -p /usr/local/lib /usr/local/bin
sudo mv heroku-cli-v6.*.* /usr/local/lib/heroku
sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku
rm heroku.tar.gz

# C analogue of flux
sudo apt -y install redshift

# diff-so-fancy
mkdir -p ~/bin/
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy > ~/bin/diff-so-fancy

# LastPass
#curl -O https://lastpass.com/lplinux.tar.bz2
#tar xjvf lplinux.tar.bz2 -C lplinux
#./lplinux/install_lastpass.sh
#rm lplinux.tar.bz2

# Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

# ngrok https://ngrok.com/
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip
mv ngrok /bin

# editorconfig for vim
curl -LO https://github.com/editorconfig/editorconfig-vim/archive/master.zip
unzip master.zip
rm master.zip
mv editorconfig-vim-master ~/.vim

# sudo snap install slack --classic
# error: snap "slack" is not available on stable for this architecture (i386) but exists on other architectures (amd64).


###############################################################################
#                            Yet More Packages                                #
###############################################################################

sudo apt -y install build-essential
sudo apt -y install gtypist
sudo apt -y install coreutils
sudo apt -y install python3-venv
sudo apt -y install eyed3
sudo apt -y install flake8
sudo apt -y install testdisk
sudo apt -y install toilet
sudo apt -y install toilet-fonts
sudo apt -y install retext
sudo apt -y install emacs25
sudo apt -y install mercurial
sudo apt -y install powerline
sudo apt -y install fonts-powerline

exit 0
