#I have setup my laptop with Debian to try something new.
#I will make a setup script for that distriibution as well.
#This is my learning process for the apt package manager.
#I am far more familiar with Fedora than Debian so this is necessary.

#Welcome Message
echo "Hello Shane, Lets get your system updated for you."

#Update Command
sudo apt update && sudo apt dist-upgrade -y

#Installed Nala to use for updating.
sudo nala update

#Update successful message
echo "Debian has been updated."

clear

exit
