#!/bin/bash

# Currently the installation process is specific to Ubuntu
# TODO: Add support for other Linux Distros as well.

echo -e "\e[93mInstalling Ubuntu Packages...\033[0m"
if ! sudo bash ./packages/setup_ubuntu.sh;
then
    echo -e "\e[91m\nInstallation Failed! Couldn't install all the packages of Ubuntu\033[0m";
fi;
echo -e "\e[92m\nUbuntu Packages are Installed Successfuly!\033[0m"


echo -e "\n\e[93mInstalling Python Packages...\033[0m"
if ! bash ./setup_python.sh;
then
    echo -e "\e[91m\nInstallation Failed! Couldn't install all the packages of Python\033[0m";
fi;
echo -e "\e[92m\nPython Packages are Installed Successfuly!\033[0m"


echo -e "\n\e[93mCreating dotfiles hardlinks...\033[0m"
if ! bash ./create_dotlinks.sh;
then
    echo -e "\e[91m\nOperation Failed! Couldn't create all the hardlinks of dotfiles\033[0m";
fi;
echo -e "\e[92m\nHardlinks for all the dotfiles are created successfuly!\033[0m"


if ! grep bashrc_extended < ~/.bashrc;
then
    echo "source ~/.bashrc_extended" >> ~/.bashrc
fi;

if ! grep zshrc_extended < ~/.zshrc;
then
    echo -e "source ~/.zshrc_extended\n$(cat ~/.zshrc)" > ~/.zshrc
fi;

if ! grep shell_aliases < ~/.zshrc;
then
    echo "source ~/.shell_aliases" >> ~/.zshrc
fi;

