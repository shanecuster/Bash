#!/bin/bash

#This is a setup bash scrip that handles some of the tasks I do at setup.
#I use this with Fedora but it can be altered for other distributions.
#Rough draft of this. I will work on it more as I go.


sudo hostnamectl set-hostname "Fedora"

#Editing the DNF configuration file.
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "fastestmirror=true" >> /etc/dnf/dnf.conf
echo "defaultyes=true" >> /etc/dnf/dnf.conf

#Updating the System.
sudo dnf upgrade

#Enabling RPM Fusion repository.

#Free
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

#Non-Free
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Enabling the Flatpak Repository.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#Installing Brave Browser.
sudo dnf install dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install brave-browser

#Installing Bitwarden password manager.
sudo dnf install bitwarden

exit
