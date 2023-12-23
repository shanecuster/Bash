#!/bin/bash

#This script is in its early version.
#I am still learning how to do this.
#I will continue to update as I learn. 

#Clear the screen
clear

#Updates the system using dnf5
sudo dnf5 upgrade -y

#Waiting three seconds
sleep 3

#Updates Flatpaks
flatpak upgrade

#Adding a blank line in the text for cleaner output.
echo -e "\n"

#Waiting three seconds
sleep 3

#Alerting me when Upgrading is done.
echo "Updated on: "  && \

#Adding a blank line in the text for cleaner output.
echo -e "\n"

#Showing the date/time when the update is complete
date && \

#Adding a blank line in the text for cleaner output.
echo -e "\n"

#Showing the date on a calendar.
cal && \

#Adding a blank line in the text for cleaner output.
echo -e "\n"

#Alert at the end of the update.
echo "Your software is up-to-date."

#Adding a blank line in text for cleaner output.
echo -e "\n"

#exiting the script
echo "Press any key to exit"

#Reading user input
read

#Clearing the screen after finishing.
clear

exit
