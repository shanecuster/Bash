#!/bin/bash

#This is a setup bash scrip that handles some of the tasks I do at setup.
#I use this with Fedora but it can be altered for other distributions.
#Rough draft of this. I will work on it more as I go.

sudo hostnamectl set-hostname "Fedora"

#Editing the DNF configuration file.
sudo sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "fastestmirror=true" >> /etc/dnf/dnf.conf'
sudo sd -c 'echo "defaultyes=true" >> /etc/dnf/dnf.conf'

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing DNF5
sudo dnf install dnf5

#Creating Aliases for DNF5
sudo echo "alias dnf="dnf5"" >> /home/.bashrc
sudo echo "alias sudo="sudo"" >> /home/.bashrc

#Notification of DNF5 Install and Aliases created.
echo "DNF5 has been installed and your aliases have been created."

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting the user that the upgrade will start.
echo "System upgrade will now begin."

#Updating the System.
sudo dnf upgrade -y

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting the user the system has been upgraded.
echo "Your system has been updated."

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Enabling RPM Fusion repository.

#Alerting User that RPM Fusion will be enabled.
echo "Enabling RPM Fusion Repositories."

#Free
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

#Non-Free
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Alerting user that RPM Fusion has been added.
echo "RPM Fusion Repositories have been added."

#Adding a blank like in text for cleaner output.
echo -e "\n"

#Enabling the Flatpak Repository.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting user that Flatpak Repository has been added.
echo "Flatpak Repository has been added."

#Adding a blank line in text for cleaner output.
echo -e "\n"

#I use Brave Browser and Bitwarden on every machine to these will always be installed.
#Alerting the user Brave Browser will be installed.
echo "Now installing Brave Browser."

#Installing Brave Browser.
sudo dnf install dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install brave-browser

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting the user that Brave Browser has been installed.
echo "Brave Browser has been installed."

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting the user that Bitwarden is being installed.
echo "Now installing Bitwarden Password Manager."

#Installing Bitwarden Password manager.
sudo dnf install bitwarden -y

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting the user Bitwarden has been installed.
echo "Bitwarden Password Manager has been installed."

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alering the user some other utilities and Applications will be installed.
#This will be updated as I go on. This section is for applications I use regularly.
echo "Now installing other Applications and Utilities."

#Installing Neofetch and setting it to run at terminal startup.
sudo dnf install neofetch -y

sudo echo "neofetch" >> /home/.bashrc

#Installing Htop and Stacer
sudo dnf install htop stacer -y

#Installing Discord
sudo dnf install discord -y

#Clearing the screen after install.
clear

#Posting Press Enter to Continue to Let the user know the script has completed.
echo "Press Enter to continue."

#Reading user Input
read

#Setting Neofetch to run after the screen is cleared to appear as a brand new terminal prompt.
neofetch

exit
