#!/usr/bin/env bash

##################################
# This Fedora Setup Is Outdated. #
##################################

echo "Beginning with Fedora setup. Have a walk while the machine is setup"

# Upgrade the already present packages
sudo dnf -y upgrade

# Install zsh
sudo dnf -y install zsh

# Install everything else
sudo dnf -y install ack
sudo dnf -y install git git-extras hub
sudo dnf -y install htop ngrep nmap
sudo dnf -y install autojump # A smart command to change directory (https://github.com/wting/autojump)
pip install legit            # http://www.git-legit.org/
legit install		     # Enables the extra git commands
sudo dnf -y install zopfli   # Data compression software (https://github.com/google/zopfli)
sudo dnf -y install cowsay
# pup not available for Linux (Fedora)
sudo dnf -y install sshrc    # https://github.com/Russell91/sshrc
pip install stormssh         # Linux alternative for storm https://github.com/emre/storm
pip install --user howdoi
sudo dnf -y install httpie   # https://github.com/jakubroztocil/httpie
sudo dnf -y install jq       # https://stedolan.github.io/jq/
sudo dnf -y install elixir
sudo dnf -y install ShellCheck
sudo dnf -y install teamviewer

###############################################################################
#                        Install utilities                                    #
###############################################################################

sudo dnf -y install firefox
# Evernote,skitch,dash not available
sudo dnf -y install https://prerelease.keybase.io/keybase_amd64.rpm
# android-file-transfer-linux http://whoozle.github.io/android-file-transfer-linux/
# sudo dnf -y install chromium # open source alternative of Google Chrome
# sudo dnf -y install hexchat  # open source alternative of limechat
sudo dnf -y install dropbox
sudo dnf -y install vlc
# nvalt alternative nvpy for notes https://github.com/cpbotha/nvpy

# Postgres Database
sudo dnf -y install postgresql-server
sudo dnf -y install postgresql
sudo dnf -y install pgadmin3
sudo dnf -y install rubygems
sudo gem install pg

# PG tools
# osgeo needs epel
sudo dnf -y install postgis

################################################################################
#                           Datat Stores                                       #
################################################################################

sudo dnf -y install mysql
sudo dnf -y install mongodb
sudo dnf -y install redis
sudo dnf -y install elasticsearch

################################################################################
#                           Dev tools                                          #
################################################################################
sudo dnf -y install VirtualBox
sudo dnf -y install vagrant
sudo dnf -y install python-postman
sudo dnf -y install weechat
sudo dnf -y install tmux
pip install --user cookiecutter

#Frontend stuff
sudo dnf -y install npm
npm i -g postcss-cli
npm i -g autoprefixer

#Custom stuff
#Telegram
sudo dnf -y copr enable rommon/telegram
sudo dnf -y install telegram-desktop
sudo dnf copr disable rommon/telegram

# Slack needs to be unpacked manually due to version name in download url

################################################################################
#                          Installing some binaries                            #
################################################################################

# Heroku standalone installer
wget https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-linux-x86.tar.gz -O heroku.tar.gz
tar -xvzf heroku.tar.gz
mkdir -p /usr/local/lib /usr/local/bin
mv heroku-cli-v6.*.* /usr/local/lib/heroku
ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku
rm heroku.tar.gz

# C analogue of flux
# sudo dnf -y install redshift

# diff-so-fancy
mkdir -p ~/bin/
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy > ~/bin/diff-so-fancy

# LastPass
curl -O https://lastpass.com/lplinux.tar.bz2
tar xjvf lplinux.tar.bz2 -C lplinux
./lplinux/install_lastpass.sh
rm lplinux.tar.bz2

# Sublime Text 3
curl -LO https://download.sublimetext.com/sublime_text_3_build_3143_x64.tar.bz2
tar xvjf sublime_text_3_build_3143_x64.tar.bz2
sudo cp -rf sublime_text_3/subime_text.desktop /usr/share/applications/sublime_text.desktop
echo "You might need to change the icon by pasting Icon=/opt/sublime_text/Icon/128x128/sublime-text.png"
sudo mv sublime_text_3 /opt/sublime_text
sudo ln -s /opt/sublime_text/sublime_text /usr/bin/subl

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

# slack for fedora v3.0.2
curl -LO https://downloads.slack-edge.com/linux_releases/slack-3.0.2-0.1.fc21.x86_64.rpm
rpm --install slack-3.0.2-0.1.fc21.x86_64.rpm
rm slack-3.0.2-0.1.fc21.x86_64.rpm

exit 0
