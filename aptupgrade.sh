#I have setup my laptop with Debian to try something new.
#I will make a setup script for that distriibution as well.
#This is my learning process for the apt package manager.
#I am far more familiar with Fedora than Debian so this is necessary.

#Recording the start time.
start_time=$(date +%s)

#Welcome Message
echo "Hello Shane, Lets get your system updated for you."

#Update Command
sudo apt update && sudo apt dist-upgrade -y

#Installed Nala to use for updating.
sudo nala update

#Update successful message
echo "Debian has been updated."

#Adding a blank line in text for cleaner output.
echo -e "\n"

#Recording the end time.
end_time=$(date +%s)

#Calculating the time that elapsed.
elapsed_time=$((end_time - start_time))

# Convert to minutes and seconds if elapsed time is greater than 60 seconds
if ((elapsed_time >= 60)); then
    minutes=$((elapsed_time / 60))
    seconds=$((elapsed_time % 60))
    echo "Script completed in $minutes minutes and $seconds seconds."
else
    echo "Script completed in $elapsed_time seconds."
fi

#exiting the script
echo "Press Enter to exit"

#Reading user input
read

#Adding a blank line in text for cleaner output.
echo -e "\n"

clear

exit
