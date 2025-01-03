#!/bin/bash
echo "Installing Required packages curl git"
sudo apt install -y git curl
cd ~/
echo -e "git cloning https://github.com/gitxpresso/clodsh/"
cmd=(dialog --separate-output --checklist "Select options:" 22 76 16)
options=(1 "Install Docker" off    # any option can be set to default to "on"        
        (2 "LinuxServer" off
        (3 "Other Options" off
        (4 "Exit" off
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)  echo -e "Installing ${BCyan}Docker"
            curl -fsSL https://get.docker.com/ | bash
            echo "Done installing Docker"
            ;;
        
            
        2)
            echo "You've selected LinuxServer"
            curl -fsSL https://bit.ly/LinuxServerSH | bash
            ;;
        3)
            echo "Youve Pick other options"
            ;;
        4)
            echo "Exiting"
            exit :1
            ;;
    esac
done
