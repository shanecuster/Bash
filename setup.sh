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
sudo dnf install dnf5 dnf5-plugins

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

#Installing Some Frequently Used Utilities.

#Installing Htop
sudo dnf install htop -y

#Installing Stacer
sudo dnf install stacer -y

#Installing Some Flatpak's via Flathub.

#PrusaSlicer for 3D Printer.

#Installing PrusaSlicer via Flathub
flatpak install flathub com.prusa3d.PrusaSlicer

#Other Applications for 3D Printing.

#Installing FreeCAD via Flathub
flatpak install flathub org.freecadweb.FreeCAD

#Installing Blender via Flathub
flatpak install flathub org.blender.Blender

#Chat Applications

#Installing Discord via Flathub
flatpak install flathub com.discordapp.Discord

#Installing Telegram via Flathub
flatpak install flathub org.telegram.desktop

#Installing Whalebird via Flathub
flatpak install flathub social.whalebird.WhalebirdDesktop

#Installing HexChat via Flathub
flatpak install flathub io.github.Hexchat

#Music Players

#Installing Cider via Flathub
flatpak install flathub sh.cider.Cider

#Installing Blanket via Flathub
flatpak install flathub com.rafaelmardojai.Blanket

#Installing Podcasts via Flathub
flatpak install flathub org.gnome.Podcasts

#Installing Shortwave via Flathub
flatpak install flathub de.haeckerfelix.Shortwave

#Sublime for Text editing and Git.

#Installing Sublime Text via Flathub
flatpak install flathub com.sublimetext.three

#Installing Sublime Merge via Flathub
flatpak install flathub com.sublimemerge.App

#IDE's for Code editing

#Installing Visual Studio Code via Flathub
flatpak install flathub com.visualstudio.code

#Installing Pycharm Community via Flathub
flatpak install flathub com.jetbrains.PyCharm-Community

#Deja Dup for Backups

#Installing Deja Dup via Flathub
flatpak install flathub org.gnome.DejaDup

#Torrents

#Installing Fragments via Flathub
flatpak install flathub de.haeckerfelix.Fragments

#DVD/Blu-Ray Conversion

#Installing MakeMKV via Flathub
flatpak install flathub com.makemkv.MakeMKV

#Installing Handbrake
sudo dnf install handbrake -y

#Digital Art

#Installing Krita via Flathub
flatpak install flathub org.kde.krita

#Installing Gimp via Flathub
flatpak install flathub org.gimp.GIMP

#Installing Inkscape via Flathub
flatpak install flathub org.inkscape.Inkscape

#Virtual Machine Software

#Installing Virtual Machine Manager
sudo dnf install virt-manager -y

#Installing Boxes via Flathub
flatpak install flathub org.gnome.Boxes

#Email Clients

#Installing Geary via Flathub
flatpak install flathub org.gnome.Geary

#Installing Evolution via Flathub
flatpak install flathub org.gnome.Evolution

#Installing Thunderbird via Flathub
flatpak install flathub org.mozilla.Thunderbird

#Web Browsers
#Firefox is installed by default.
#Brave should already be installed at this point.

#Installing Librewolf via Flathub
flatpak install flathub io.gitlab.librewolf-community

#Installing Vivaldi via Flathub
flatpak install flathub com.vivaldi.Vivaldi

#Game Stuff

#Installing Steam via Flathub
flatpak install flathub com.valvesoftware.Steam

#Installing Bottles via Flathub
flatpak install flathub com.usebottles.bottles

#Installing MiniGalaxy via Flathub
flatpak install flathub io.github.sharkwouter.Minigalaxy

#Installing Heroic Games Launcher via Flathub
flatpak install flathub com.heroicgameslauncher.hgl

#Installing Lutris via Flathub
flatpak install flathub net.lutris.Lutris

#Books

#Installing Calibre via Flathub
flatpak install flathub com.calibre_ebook.calibre

#Photos

#Installing XnConvert via Flathub
#This is what you use for converting WebP Images for Wallpapers.
flatpak install flathub com.xnview.XnConvert

#Remote Desktop

#Installing Remmina via Flathub
flatpak install flathub org.remmina.Remmina

#Other Stuff that needs to be installed.

#Installing Authenticator via Flathub
flatpak install flathub com.belmoussaoui.Authenticator

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting the user that their software has been installed.
echo "Software has been installed."

#Adding a blank line in text for cleaner output.
echo -e "\n"

Alerting the user of some other Software that needs to be installed.
echo "You may still want to install: " && \
echo "DeaDBeef" && \
echo "TorGuard" && \
echo "Minecraft" && \
echo "VirtualBox" && \

#Creating Alias for "clear" to clear the screen and show neofetch.
sudo echo "alias clear="clear && neofetch"" >> /home/.bashrc

#Posting Press Enter to Continue to Let the user know the script has completed.
echo "Press Enter to continue."

#Reading user Input
read

#Clearing the screen after install.
clear

exit
