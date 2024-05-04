#!/bin/bash

#This is my Debian setup script.
#I will edit this as I go.


#Installing Nala
echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install nala -y

sudo apt install syncthing -y

sudo apt install cowsay -y

#Installing tldr to only display the stuff you need from man pages.
sudo dnf install tldr -y

#Installing fastfetch
sudo dnf install fastfetch -y
