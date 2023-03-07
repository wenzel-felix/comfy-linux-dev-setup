#!/bin/bash

git config --global core.filemode false
cat <<EOF > /etc/wsl.conf
[automount]
options = metadata
EOF