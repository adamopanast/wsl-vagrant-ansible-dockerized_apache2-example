#!/bin/bash


#
# Author: Tasos Adamopoulos adamopanast@gmail.com
#

# update box
sudo apt-get update

# install ansible
sudo apt-get install ansible

# download vagrant for debian based linux systems
wget https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.deb

# install the downladed deb package, maybe you will be asked for credentials
sudo dpkg -i vagran_t1.9.7_x86_64.deb

# export env vars to enable WSL-Vagrant integration, append configuration .bashrc
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
echo 'export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"' >> .bashrc
export PATH="$PATH:/mnt/c/Windows/System32/WindowsPowerShell/v1.0"
echo 'export PATH="$PATH:/mnt/c/Windows/System32/WindowsPowerShell/v1.0"' >> .bashrc
