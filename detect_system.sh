#!/bin/bash

bash ./configs/default_config.sh

# https://stackoverflow.com/questions/38859145/detect-ubuntu-on-windows-vs-native-ubuntu-from-bash-script
if grep -qi microsoft /proc/version; then
  bash ./configs/wsl_config.sh
else
  bash ./configs/ubuntu_config.sh
fi