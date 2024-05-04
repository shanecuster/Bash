#!/bin/bash

#This is a script that has just the software that I use.
#I will also add the necessary repositories to be added if they haven't been already.
#I will add and remove software as necessary.

#Alerting User that RPM Fusion will be enabled.
echo "Enabling RPM Fusion Repositories." && \

#Free
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

#Non-Free
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Alerting user that RPM Fusion has been added.
echo "RPM Fusion Repositories have been added." && \

#Adding a blank like in text for cleaner output.
echo -e "\n"

#Enabling the Flatpak Repository.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting user that Flatpak Repository has been added.
echo "Flatpak Repository has been added." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting the user that Software will be now be installed.
echo "Now installing Software Packages." && \

#Web Browsers
#Firefox is installed by default.

#Installing Brave Browser via Flathub.
flatpak install flathub com.brave.Browser -y
echo "Brave Browser has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Librewolf via Flathub
flatpak install flathub io.gitlab.librewolf-community -y
echo "Librewolf has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Vivaldi via Flathub
flatpak install flathub com.vivaldi.Vivaldi -y
echo "Vivaldi has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Bitwarden Password manager.
flatpak install flathub com.bitwarden.desktop -y
echo "Bitwarden Password Manager has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Fastfetch and setting it to run at terminal startup.
sudo dnf install fastfetch -y
echo "Fastfetch has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

sudo echo "fastfetch" >> /home/.bashrc

#Installing Htop
sudo dnf install htop -y
echo "HTOP has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Stacer
sudo dnf install stacer -y
echo "Stacer has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#PrusaSlicer for 3D Printer.

#Installing PrusaSlicer via Flathub
flatpak install flathub com.prusa3d.PrusaSlicer -y
echo "PrusaSlicer has been installed." && \
echo "Have fun 3D Printing!" && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Other Applications for 3D Printing.

#Installing FreeCAD via Flathub
flatpak install flathub org.freecadweb.FreeCAD -y
echo "FreeCAD has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Blender via Flathub
flatpak install flathub org.blender.Blender -y
echo "Blender has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Chat Applications

#Installing Discord via Flathub
flatpak install flathub com.discordapp.Discord -y
echo "Discord has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Telegram via Flathub
flatpak install flathub org.telegram.desktop -y
echo "Telegram has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Whalebird via Flathub
flatpak install flathub social.whalebird.WhalebirdDesktop -y
echo "Whalebird has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing HexChat via Flathub
flatpak install flathub io.github.Hexchat -y
echo "HexChat has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Music Players

#Installing Cider via Flathub
flatpak install flathub sh.cider.Cider -y
echo "Cider has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Blanket via Flathub
flatpak install flathub com.rafaelmardojai.Blanket -y
echo "Blanket has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Podcasts via Flathub
flatpak install flathub org.gnome.Podcasts -y
echo "Podcasts has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Shortwave via Flathub
flatpak install flathub de.haeckerfelix.Shortwave -y
echo "Shortwave has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Sublime for Text editing and Git.

#Installing Sublime Text via Flathub
flatpak install flathub com.sublimetext.three -y
echo "Sublime Text has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Sublime Merge via Flathub
flatpak install flathub com.sublimemerge.App -y
echo "Sublime Merge has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#IDE's for Code editing

#Installing Visual Studio Code via Flathub
flatpak install flathub com.visualstudio.code -y
echo "Visual Studio Code has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Pycharm Community via Flathub
flatpak install flathub com.jetbrains.PyCharm-Community -y
echo "Pycharm has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Deja Dup for Backups

#Installing Deja Dup via Flathub
flatpak install flathub org.gnome.DejaDup -y
echo "Deja Dup has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Torrents

#Installing Fragments via Flathub
flatpak install flathub de.haeckerfelix.Fragments -y
echo "Fragments has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#DVD/Blu-Ray Conversion

#Installing MakeMKV via Flathub
flatpak install flathub com.makemkv.MakeMKV -y
echo "MakeMKV has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Handbrake via Flathub.
flatpak install flathub fr.handbrake.ghb -y
echo "Handbrake has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Digital Art

#Installing Krita via Flathub
flatpak install flathub org.kde.krita -y
echo "Krita has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Gimp via Flathub
flatpak install flathub org.gimp.GIMP -y
echo "GIMP has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Inkscape via Flathub
flatpak install flathub org.inkscape.Inkscape -y
echo "Inkscape has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Virtual Machine Software

#Installing Virtual Machine Manager
sudo dnf install virt-manager -y
echo "Virtual Machine Manager has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Email Clients

#Installing Geary via Flathub
flatpak install flathub org.gnome.Geary -y
echo "Geary has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Evolution via Flathub
flatpak install flathub org.gnome.Evolution -y
echo "Evolution has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Thunderbird via Flathub
flatpak install flathub org.mozilla.Thunderbird -y
echo "Thunderbird has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Game Stuff

#Installing Steam via Flathub
flatpak install flathub com.valvesoftware.Steam -y
echo "Steam has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Bottles via Flathub
flatpak install flathub com.usebottles.bottles -y
echo "Bottles has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing MiniGalaxy via Flathub
flatpak install flathub io.github.sharkwouter.Minigalaxy -y
echo "MiniGalaxy has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Heroic Games Launcher via Flathub
flatpak install flathub com.heroicgameslauncher.hgl -y
echo "Heroic Games Launcher has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Installing Lutris via Flathub
flatpak install flathub net.lutris.Lutris -y
echo "Lutris has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Books

#Installing Calibre via Flathub
flatpak install flathub com.calibre_ebook.calibre -y
echo "Calibre has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Photos

#Installing XnConvert via Flathub
#This is what you use for converting WebP Images for Wallpapers.
flatpak install flathub com.xnview.XnConvert -y
echo "XnConvert has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Remote Desktop

#Installing Remmina via Flathub
flatpak install flathub org.remmina.Remmina -y
echo "Remmina has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Other Stuff that needs to be installed.

#Installing Authenticator via Flathub
flatpak install flathub com.belmoussaoui.Authenticator -y
echo "Authenticator has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Alerting the user that their software has been installed.
echo "Software has been installed." && \

#Adding a blank line in text for cleaner output.
echo -e "\n"

Alerting the user of some other Software that needs to be installed.
echo "You may still want to install: " && \
echo "DeaDBeef" && \
echo "TorGuard" && \
echo "Minecraft" && \
echo "VirtualBox" && \

#Posting Press Enter to Continue to Let the user know the script has completed.
echo "Press Enter to continue."

#Reading user Input
read

#Clearing the screen after install.
clear

exit
