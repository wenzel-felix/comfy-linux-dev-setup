#!/bin/bash

Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "h     Print this Help."
   echo "u     Git user name."
   echo "m     Git email address."
   echo
}

############################################################
############################################################
# Main program                                             #
############################################################
############################################################
############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts ":h:u:m:" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      u) # Enter a name
         UserName=$OPTARG;;
      m) # Enter a mail
         UserMail=$OPTARG;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done

wget https://raw.githubusercontent.com/wenzel-felix/comfy-linux-dev-setup/main/configs/default_config.sh
chmod +x ./default_config.sh

if [ -n "$UserName" ] && [ -n "$UserMail" ]; then 
    ./default_config.sh -u $UserName -m "$UserMail"
else 
    ./default_config.sh
fi

# https://stackoverflow.com/questions/38859145/detect-ubuntu-on-windows-vs-native-ubuntu-from-bash-script
if grep -qi microsoft /proc/version; then
  bash ./configs/wsl_config.sh
else
  bash ./configs/ubuntu_config.sh
fi